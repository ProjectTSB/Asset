#> asset:mob/0402.drown_spellbook/ai/bullet/0.summon
#
# 弾幕 召喚
#
# @within function asset:mob/0402.drown_spellbook/tick/

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2038
    function api:object/summon

# 時間リセット
    execute store result score @s B6.Tick run random value 0..40
