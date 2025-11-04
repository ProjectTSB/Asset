#> asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/addition_thunder
#
# 追加で2本召喚する処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/

# マーカーを召喚し、プレイヤーの方に斜めに向ける
    summon marker ~ ~ ~ {Tags:["26.RotationMarker"]}
    execute as @e[type=marker,tag=26.RotationMarker,distance=..0.01] facing entity @p[gamemode=!spectator,distance=..50] feet rotated ~30 ~ run tp @s ~ ~ ~ ~ ~

# マーカーのRotationをFieldOverrideに設定し、雷を召喚
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=marker,tag=26.RotationMarker,distance=..0.01,sort=nearest,limit=1] Rotation
    function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/summon_thunder

# マーカーを-60°向きをずらし、再度召喚
    execute as @e[type=marker,tag=26.RotationMarker,distance=..0.01] facing entity @p[gamemode=!spectator,distance=..50] feet rotated ~-60 ~ run tp @s ~ ~ ~ ~ ~
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=marker,tag=26.RotationMarker,distance=..0.01,sort=nearest,limit=1] Rotation
    function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/summon_thunder

# マーカーをkill
    kill @e[type=marker,tag=26.RotationMarker,distance=..0.01]
