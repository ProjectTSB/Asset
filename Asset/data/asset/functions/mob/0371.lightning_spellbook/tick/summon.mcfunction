#> asset:mob/0371.lightning_spellbook/tick/summon
#
# 魔法を召喚する処理
#
# @within function asset:mob/0371.lightning_spellbook/tick/ready

# 魔法を召喚
    data modify storage api: Argument.ID set value 2049
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# リセット
    function asset:mob/0371.lightning_spellbook/tick/reset
