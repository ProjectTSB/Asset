#> asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/alert/summon
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/alert/recursive

# ついでに後で使うマーカーも召喚
    summon marker ~ ~ ~ {Tags:["8N.Marker.Target","8N.Marker"]}

# 自機狙い
    # ID指定
        data modify storage api: Argument.ID set value 2063
    # データ設定
        data modify storage api: Argument.FieldOverride.Color set value 16737792
        data modify storage api: Argument.FieldOverride.Scale set value [10f,10f,0.01f]
        data modify storage api: Argument.FieldOverride.Tick set value 30
    # 召喚
        function api:object/summon
