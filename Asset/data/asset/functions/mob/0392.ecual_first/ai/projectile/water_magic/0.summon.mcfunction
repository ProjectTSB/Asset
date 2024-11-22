#> asset:mob/0392.ecual_first/ai/projectile/water_magic/0.summon
#
# 設置水魔法 召喚
#
# @within function asset:mob/0392.ecual_first/**

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2017
    function api:object/summon
