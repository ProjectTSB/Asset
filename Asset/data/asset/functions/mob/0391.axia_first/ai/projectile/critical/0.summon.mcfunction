#> asset:mob/0391.axia_first/ai/projectile/critical/0.summon
#
# クリティカルヒット 召喚
#
# @within function asset:mob/0391.axia_first/**

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2016
    function api:object/summon
