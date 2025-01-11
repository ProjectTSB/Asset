#> asset:mob/0399.void_spellbook/ai/bullet/0.summon
#
# 弾幕 召喚
#
# @within function asset:mob/0399.void_spellbook/ai/bullet/4.fire

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2024
    function api:object/summon
