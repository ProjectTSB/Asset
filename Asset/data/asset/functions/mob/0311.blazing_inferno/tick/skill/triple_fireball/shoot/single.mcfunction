#> asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/shoot/single
#
# 一発撃つ
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/tick

# サウンド
    function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/shoot/vfx

# 自機狙い
    # ID指定
        data modify storage api: Argument.ID set value 2135
    # データ設定
        execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    # 召喚
        function api:object/summon
