#> asset:mob/0378.red_knight_v3/tick/90.tp/skill_move
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/90.tp/main

# 近寄ってから攻撃するのでそれ用のスキルのみ選択したい
# ランダム
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const

# デバッグスキル固定
    scoreboard players set $Random Temporary 2
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add AI.Skill01
    execute if score $Random Temporary matches 1 run tag @s add AI.Skill02
    execute if score $Random Temporary matches 2 run tag @s add AI.Skill03

# リセット
    scoreboard players reset $Random Temporary

# その後動くようにする
    scoreboard players set @s AI.Tick -1
    tag @s remove AI.Skill90
    tag @s add AI.Skill90Used
