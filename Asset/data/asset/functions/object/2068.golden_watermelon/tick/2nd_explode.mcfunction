#> asset:object/2068.golden_watermelon/tick/2nd_explode
#
# 2段目爆発
#
# @within function asset:object/2068.golden_watermelon/tick/

# 演出
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1.0 1.7 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.8 1 0
    particle dust 1 0.941 0.141 2 ~ ~5 ~ 0.1 3 0.1 0 60 normal @a
    particle large_smoke ~ ~ ~ 0 0 0 0.2 60 normal @a
    execute rotated ~ 0 run function asset:object/2068.golden_watermelon/tick/vfx

# 金のスイカスライスを召喚
    summon item ~ ~ ~ {Age:5940s,PickupDelay:5s,Item:{id:"minecraft:glistering_melon_slice",Count:4b}}

# 雷属性ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.2nd
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの金色の電撃により消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの電撃により死亡した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] run function api:damage/
    function api:damage/reset

# 消滅
    kill @s
