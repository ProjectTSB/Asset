#> asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/active
#
# スキル発動
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/

# マーカーを召喚し、プレイヤーの方に向ける
    summon marker ~ ~ ~ {Tags:["26.RotationMarker"]}
    tp @e[type=marker,tag=26.RotationMarker,distance=..0.01] ~ ~ ~ facing entity @p[gamemode=!spectator,distance=..50] feet

# マーカーのRotationをFieldOverrideに設定し、雷を召喚
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=marker,tag=26.RotationMarker,distance=..0.01,sort=nearest,limit=1] Rotation
    function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/summon_thunder

# マーカーをkill
    kill @e[type=marker,tag=26.RotationMarker,distance=..0.01]

# モーション
    data modify storage lib: Argument.VectorMagnitude set value 1.2
    execute facing entity @p[gamemode=!spectator,distance=..50] eyes rotated ~-180 -20 run function lib:motion/
