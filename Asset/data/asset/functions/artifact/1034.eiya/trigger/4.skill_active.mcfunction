#> asset:artifact/1034.eiya/trigger/4.skill_active
#
# 神器のn段目とか処理する部分
#
# @within function asset:artifact/1034.eiya/trigger/3.main

# 1~9段目までの段階のスコア
    scoreboard players add @s SQ.Count 1

# playsound
    execute if entity @s[scores={SQ.Count=..8}] run playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={SQ.Count=..8}] run playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1.2
    execute if entity @s[scores={SQ.Count=..8}] run playsound minecraft:item.trident.return player @a ~ ~ ~ 1 1.2

# 1段目
    execute if entity @s[scores={SQ.Count=1}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash1
    execute if entity @s[scores={SQ.Count=1}] run scoreboard players set @s SQ.SkillCooldown 8

# 2段目
    execute if entity @s[scores={SQ.Count=2}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash2
    execute if entity @s[scores={SQ.Count=2}] run scoreboard players set @s SQ.SkillCooldown 32

# 3段目
    execute if entity @s[scores={SQ.Count=3}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash3
    execute if entity @s[scores={SQ.Count=3}] run scoreboard players set @s SQ.SkillCooldown 8

# 4段目
    execute if entity @s[scores={SQ.Count=4}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash4
    execute if entity @s[scores={SQ.Count=4}] run scoreboard players set @s SQ.SkillCooldown 13

# 5段目
    execute if entity @s[scores={SQ.Count=5}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash5
    execute if entity @s[scores={SQ.Count=5}] run scoreboard players set @s SQ.SkillCooldown 6

# 6段目
    execute if entity @s[scores={SQ.Count=6}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash6
    execute if entity @s[scores={SQ.Count=6}] run scoreboard players set @s SQ.SkillCooldown 5

# 7段目
    execute if entity @s[scores={SQ.Count=7}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash7
    execute if entity @s[scores={SQ.Count=7}] run scoreboard players set @s SQ.SkillCooldown 7

# 8段目
    execute if entity @s[scores={SQ.Count=8}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash8
    execute if entity @s[scores={SQ.Count=8}] run scoreboard players set @s SQ.SkillCooldown 23

# 9段目
    execute if entity @s[scores={SQ.Count=9}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash9.1
    execute if entity @s[scores={SQ.Count=9}] anchored eyes positioned ^ ^ ^2.5 run function asset:artifact/1034.eiya/trigger/vfx/slash9.1
    execute if entity @s[scores={SQ.Count=9}] anchored eyes positioned ^ ^ ^2.5 run function asset:artifact/1034.eiya/trigger/vfx/slash9.2
    execute if entity @s[scores={SQ.Count=9}] run scoreboard players set @s SQ.SkillCooldown 25

# ダメージ
    execute if entity @s[scores={SQ.Count=..8}] run function asset:artifact/1034.eiya/trigger/5.damage
    execute if entity @s[scores={SQ.Count=9}] run function asset:artifact/1034.eiya/trigger/6.damage2