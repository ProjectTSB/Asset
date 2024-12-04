#> asset:mob/0078.messenger_of_thunder/tick/skill/teleport_spread/
#
# テレポート拡散(?)のメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill_branch

# 演出
    particle electric_spark ~ ~1.2 ~ 0.4 0.5 0.4 0.1 5 normal @a

# 1回目
    execute if entity @s[scores={General.Mob.Tick=5}] run function asset:mob/0078.messenger_of_thunder/tick/skill/teleport_spread/spread

# 2回目
    execute if entity @s[scores={General.Mob.Tick=10}] at @p[gamemode=!spectator,distance=..50] run function asset:mob/0078.messenger_of_thunder/tick/skill/teleport_spread/spread

# 3回目
    execute if entity @s[scores={General.Mob.Tick=20}] run function asset:mob/0078.messenger_of_thunder/tick/skill/teleport_spread/spread

# リセット
    execute if entity @s[scores={General.Mob.Tick=30..}] run function asset:mob/0078.messenger_of_thunder/tick/skill/reset
