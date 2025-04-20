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

# SDS open
    function api:damage/single_damage_session/open

# ダメージ
    data modify storage api: Argument.Damage set value 600.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=S9.Hit,tag=!Uninterferable,distance=..5] at @s run function api:damage/

# リセット
    function api:damage/reset
    tag @e[type=#lib:living,tag=Enemy,tag=S9.Hit,tag=!Uninterferable,distance=..10] remove S9.Hit

# 地面にいるやつをうちあげ

# ダメージ
    data modify storage api: Argument.Damage set value 200.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!S9.Hit,tag=!Uninterferable,nbt={OnGround:1b},distance=..8] run function api:damage/
# 上空へ飛ばす
    execute as @e[type=#lib:living,tag=Enemy,tag=!Immovable,tag=!Uninterferable,nbt={OnGround:1b},distance=..8] run function asset:artifact/1017.cutlass_of_endless_silence/trigger/slash/levitation

# リセット
    function api:damage/reset

# SDS close
    function api:damage/single_damage_session/close
