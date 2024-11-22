#> asset:mob/0392.ecual_first/ai/projectile/water_wall/0.summon
#
# 衝撃波 召喚
#
# @within function asset:mob/0392.ecual_first/**

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2020
    function api:object/summon
