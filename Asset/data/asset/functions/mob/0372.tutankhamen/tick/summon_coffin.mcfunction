#> asset:mob/0372.tutankhamen/tick/
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill_select

# 行動中扱いにする
    tag @s add AC.InAction

# 技決定
    tag @s add AC.Coffin

# カウントリセット
    scoreboard players reset @s AC.Count.Attack
