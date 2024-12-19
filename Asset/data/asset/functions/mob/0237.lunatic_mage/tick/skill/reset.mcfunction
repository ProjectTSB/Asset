#> asset:mob/0237.lunatic_mage/tick/skill/reset
#
# リセットします
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/**

# リセット
    data modify entity @s NoAI set value 0b
    scoreboard players set @s General.Mob.Tick -60
    tag @s remove 6L.Fire
    tag @s remove 6L.Water
    tag @s remove 6L.Thunder
    tag @s remove 6L.Magic
    tag @s remove 6L.Fire2
    tag @s remove 6L.ElementalConfine
    tag @s remove 6L.LeftRotation

# ポーズもリセット
    item replace entity @s armor.head with stick{CustomModelData:20198}

# 本気ワープのスコア
    execute if entity @s[tag=6L.HealthLess40Per] run scoreboard players add @s 6L.TeleportCount 1

# ワープ
    execute if entity @s[scores={6L.TeleportCount=2..}] run function asset:mob/0237.lunatic_mage/tick/skill/teleport/
