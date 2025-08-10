#> asset:object/2068.golden_watermelon/tick/1st_explode
#
#
#
# @within function
#   asset:object/2068.golden_watermelon/tick/
#   asset:object/2068.golden_watermelon/hit_block/
#   asset:object/2068.golden_watermelon/hit_entity/

# 既にヒットしているなら中断
    execute if entity @s[tag=2068.1stHit] run return 0

# ヒットTagを付与
    tag @s add 2068.1stHit

# スコアの値を変更
    scoreboard players set @s General.Object.Tick 20

# StepPerTickを0へ
    data modify storage asset:context this.StepPerTick set value 0

# 演出
    playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.8 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.8 1 0
    particle dust 0.173 1 0.243 3 ~ ~ ~ 1.5 1.5 1.5 0 30 normal @a
    particle explosion ~ ~ ~ 1 1 1 0 5 normal @a
    particle large_smoke ~ ~ ~ 0 0 0 0.3 40 normal @a

# 水属性ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.1st
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの金色の爆発により消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの爆発により生命を終えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function api:damage/
    function api:damage/reset

# Slowness:trueでなければreturn
    execute unless data storage asset:context this{Slowness:true} run return 0

# Slowness:trueなら移動速度低下を付与
    data modify storage api: Argument set value {ID:17,Stack:6,Duration:20}
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
