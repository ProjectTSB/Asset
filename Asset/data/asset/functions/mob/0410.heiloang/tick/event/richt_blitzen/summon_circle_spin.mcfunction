#> asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_circle_spin
#
# リヒトブリッツェン
#
# @within asset:mob/0410.heiloang/tick/event/richt_blitzen/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# 向き変更
    execute positioned as @s run tp @s ~ ~ ~ ~ -90

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 270
    function api:object/summon

# 向きを戻す
    execute positioned as @s run tp @s ~ ~ ~ ~ ~
