#> asset:mob/0391.axia_first/ai/projectile/shock_wave/0.summon
#
# 衝撃波 召喚
#
# @within function asset:mob/0391.axia_first/**

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2015
    function api:object/summon
