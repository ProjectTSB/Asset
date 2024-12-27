#> asset:mob/0372.tutankhamen/tick/skill_select
#
# スキルを選択する
#
# @within function asset:mob/0372.tutankhamen/tick/

#> private
# @private
    #declare score_holder $Random

# 行動中扱いにする
    tag @s add AC.InAction

# 乱数によるスキル選択
    data modify storage lib: Args.key set value "0372.Skill"
    data modify storage lib: Args.max set value 4
    data modify storage lib: Args.scarcity_history_size set value 3
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# デバッグのコマンド
#    scoreboard players set $Random Temporary 3

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add AC.Laser
    execute if score $Random Temporary matches 1 run tag @s add AC.ManyShoot
    execute if score $Random Temporary matches 2 run tag @s add AC.HyperLaser
    execute if score $Random Temporary matches 3 run tag @s add AC.Coffin
    execute if score $Random Temporary matches 4 run tag @s add AC.ManyLaser
    execute if score $Random Temporary matches 5 run tag @s add AC.GiantSkull

# リセット
    scoreboard players reset $Random Temporary
    tag @s remove AC.DashUsed
