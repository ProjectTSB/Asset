#> asset:artifact/1017.cutlass_of_endless_silence/trigger/slash/second
#
#
#
# @within function asset:artifact/1017.cutlass_of_endless_silence/trigger/slash/

# 演出
    execute positioned ^ ^ ^1 run function asset:artifact/1017.cutlass_of_endless_silence/trigger/slash/vfx/2
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2

# タグ付与
    execute positioned ^ ^ ^1 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] add S9.Hit
    execute positioned ^ ^ ^2 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] add S9.Hit

# ダメージ
    data modify storage api: Argument.Damage set value 400.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=S9.Hit,tag=!Uninterferable,distance=..5] at @s run function api:damage/

# リセット
    function api:damage/reset
    tag @e[type=#lib:living,tag=Enemy,tag=S9.Hit,tag=!Uninterferable,distance=..10] remove S9.Hit

# 地面にいるやつをうちあげ

# ダメージ
    data modify storage api: Argument.Damage set value 100.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,nbt={OnGround:1b},distance=..20] run function api:damage/
# 上空へ飛ばす
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,nbt={OnGround:1b},distance=..20] at @s run summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,effects:[{id:"levitation",amplifier:80b,duration:3,show_particles:0b},{id:"resistance",amplifier:127b,duration:1,show_particles:0b},{id:"instant_damage",amplifier:0b,duration:1,show_particles:0b}]}

# リセット
    function api:damage/reset
