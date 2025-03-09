#> asset:mob/0372.tutankhamen/tick/summon_coffin
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/

# 行動中扱いにする
    tag @s add AC.InAction

# 技決定
    tag @s add AC.Coffin

# カウントリセット
    scoreboard players reset @s AC.Count.Attack
