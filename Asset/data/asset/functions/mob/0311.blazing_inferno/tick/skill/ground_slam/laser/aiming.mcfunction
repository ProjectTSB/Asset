#> asset:mob/0311.blazing_inferno/tick/skill/ground_slam/laser/aiming
#
# 座標レーザー
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/

# ID指定
    data modify storage api: Argument.ID set value 2147
# データ設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
# 召喚
    function api:object/summon
