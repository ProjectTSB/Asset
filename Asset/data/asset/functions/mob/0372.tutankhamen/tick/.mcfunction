#> asset:mob/0372.tutankhamen/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/372/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# スキル選択
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0372.tutankhamen/tick/skill_select

# スキル実行
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0372.tutankhamen/tick/skill_branch
