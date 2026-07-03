#> asset:object/1080.meteor_rain/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1080/kill


# 効果音
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1.5 1.7
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 2 0.7

# 爆発
    particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
    particle flame ~ ~ ~ 1.5 1.5 1.5 0 20

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
# 実行時に受け取っているUserIDの持ち主として補正を実行
    function asset:object/1080.meteor_rain/kill/modifier.m with storage asset:context this
    execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..4] run function api:damage/
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..4] run function api:damage/
    function api:damage/reset

# 消滅
    kill @s
