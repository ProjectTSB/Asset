#> asset:mob/0392.ecual_first/ai/projectile/hydro/0.summon
#
# ハイドロストーム 召喚
#
# @within function asset:mob/0392.ecual_first/**

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2021
    function api:object/summon
