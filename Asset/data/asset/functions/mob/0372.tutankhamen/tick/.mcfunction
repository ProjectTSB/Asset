#> asset:mob/0372.tutankhamen/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/372/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# AJモデルとの紐づけ
    tag @e[type=item_display,tag=AC.AJ,distance=..0.01,sort=nearest,limit=1] add AC.AJLink

# モデルを追従？
    execute at @s run tp @e[type=item_display,tag=AC.AJLink,distance=..16,sort=nearest,limit=1] ~ ~ ~ ~ ~

# スキル選択 開幕は実行しない
    execute if entity @s[tag=!AC.Opening,scores={General.Mob.Tick=0}] run function asset:mob/0372.tutankhamen/tick/skill_select

# スキル実行
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0372.tutankhamen/tick/skill_branch

# AJモデルとの紐づけ解除
    execute at @s run tag @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] remove AC.AJLink
