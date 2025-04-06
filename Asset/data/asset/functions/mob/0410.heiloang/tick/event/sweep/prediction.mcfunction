#> asset:mob/0410.heiloang/tick/event/sweep/prediction
#
# 移動攻撃
#
# @within asset:mob/0410.heiloang/tick/event/sweep/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# 予告
    execute positioned as @s run tp @s ~ ~ ~ ~ 0
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16727040
    data modify storage api: Argument.FieldOverride.Scale set value [39f,39f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 15
    data modify storage api: Argument.FieldOverride.Tick set value 50
    execute positioned ~ ~ ~ run function api:object/summon

# 終了
    execute positioned as @s facing entity @e[type=marker,tag=BE.CenterPosition,limit=1] feet run tp @s ~ ~ ~ ~ 0
