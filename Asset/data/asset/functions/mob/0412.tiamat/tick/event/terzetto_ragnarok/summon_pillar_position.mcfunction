#> asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/summon_pillar_position
#
# テルツェット・ラグナレク
#
# @within asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/

# 氷柱設置位置決定
# 放電攻撃のため、UUIDはヘイローンのものを指定
    execute rotated ~ ~ positioned ^ ^0.1 ^16 run summon area_effect_cloud ^ ^ ^ {Duration:5,Tags:["BG.Temp.PillarPosition"]}
    execute rotated ~60 ~ positioned ^ ^0.1 ^16 run summon area_effect_cloud ^ ^ ^ {Duration:5,Tags:["BG.Temp.PillarPosition"]}
    execute rotated ~120 ~ positioned ^ ^0.1 ^16 run summon area_effect_cloud ^ ^ ^ {Duration:5,Tags:["BG.Temp.PillarPosition"]}
    execute rotated ~180 ~ positioned ^ ^0.1 ^16 run summon area_effect_cloud ^ ^ ^ {Duration:5,Tags:["BG.Temp.PillarPosition"]}
    execute rotated ~240 ~ positioned ^ ^0.1 ^16 run summon area_effect_cloud ^ ^ ^ {Duration:5,Tags:["BG.Temp.PillarPosition"]}
    execute rotated ~300 ~ positioned ^ ^0.1 ^16 run summon area_effect_cloud ^ ^ ^ {Duration:5,Tags:["BG.Temp.PillarPosition"]}
