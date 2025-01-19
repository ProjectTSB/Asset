#> asset:mob/0392.ecual_first/ai/projectile/quietus_rain/0.summon
#
# クワイタスレイン 召喚
#
# @within function asset:mob/0392.ecual_first/**

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2019
    function api:object/summon
