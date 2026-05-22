#> asset:artifact/1017.cutlass_of_endless_silence/trigger/slash/first
#
#
#
# @within function asset:artifact/1017.cutlass_of_endless_silence/trigger/slash/

# 演出
    execute positioned ^0.3 ^0.8 ^1 run function asset:artifact/1017.cutlass_of_endless_silence/trigger/slash/vfx/1
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2

# タグ付与
    execute positioned ^ ^ ^1 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..2] add S9.Hit
    execute positioned ^ ^ ^2 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..2] add S9.Hit

# ダメージ設定
    data modify storage api: Argument.Damage set value 400.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=S9.Hit,tag=!Uninterferable,distance=..5] run function api:damage/

# リセット
    function api:damage/reset
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=S9.Hit,tag=!Uninterferable,distance=..10] remove S9.Hit
