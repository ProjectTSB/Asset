#> asset:mob/0363.white_spellbook/tick/summon
#
# 魔法陣を召喚
#
# @within function asset:mob/0363.white_spellbook/tick/

# 魔方陣を最寄りのプレイヤーの足元に召喚
    data modify storage api: Argument.ID set value 364
    execute at @p[distance=..10] run function api:mob/summon

# リセット
    scoreboard players set @s A3.Tick -120
