#> asset:mob/0372.tutankhamen/tick/skill/laser/recursive
#
#
#
# @within function
#   asset:mob/0372.tutankhamen/tick/skill/laser/shoot
#   asset:mob/0372.tutankhamen/tick/skill/laser/recursive

# 演出
    particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 normal @a
    particle soul_fire_flame ^ ^ ^0.25 0 0 0 0 1 normal @a
    particle soul_fire_flame ~ ~ ~ 0 0 0 0.4 3 normal @a
    particle soul ~ ~ ~ 0 0 0 0.25 3 normal @a

# 一定間隔での演出
    scoreboard players operation $Interval Temporary = $Recursive Temporary
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 run particle sonic_boom ~ ~ ~ 0 0 0 0 1
    scoreboard players reset $Interval Temporary

# 再帰スコア
    scoreboard players add $Recursive Temporary 1

# 再帰
    execute if score $Recursive Temporary matches ..60 positioned ^ ^ ^0.5 run function asset:mob/0372.tutankhamen/tick/skill/laser/recursive
