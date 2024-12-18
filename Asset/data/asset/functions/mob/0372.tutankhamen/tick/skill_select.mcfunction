#> asset:mob/0372.tutankhamen/tick/skill_select
#
# スキルを選択する
#
# @within function asset:mob/0372.tutankhamen/tick/

#> private
# @private
    #declare score_holder $Random

# 乱数取得
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $7 Const

# デバッグのコマンド
    scoreboard players set $Random Temporary 4

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add AC.Laser
    execute if score $Random Temporary matches 1 run tag @s add AC.ManyShoot
    execute if score $Random Temporary matches 2 run tag @s add AC.GiantSkull
    execute if score $Random Temporary matches 3 run tag @s add AC.HyperLaser
    execute if score $Random Temporary matches 4 run tag @s add AC.Coffin

# リセット
    scoreboard players reset $Random Temporary
