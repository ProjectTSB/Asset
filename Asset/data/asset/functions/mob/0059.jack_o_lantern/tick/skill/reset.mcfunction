#> asset:mob/0059.jack_o_lantern/tick/skill/reset
#
# リセット
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/**

# NoGravity解除
    data modify entity @s NoGravity set value 0b
    data modify entity @s NoAI set value 0b

# タグ消す
    tag @s remove 1N.Quiz
    tag @s remove 1N.Quiz.Glowing
    tag @s remove 1N.GiantPumpkin1
    tag @s remove 1N.GiantPumpkin1.Center
    tag @s remove 1N.GiantPumpkin1.Left
    tag @s remove 1N.GiantPumpkin1.Right
    tag @s remove 1N.GiantPumpkin2
    tag @s remove 1N.GiantPumpkin2.LeftRotate
    tag @s remove 1N.Missile
    tag @s remove 1N.PumpkinRain

# スコアを変える
    scoreboard players set @s General.Mob.Tick -80

# 一部フィールドのリセット
    data remove storage asset:context this.TargetID
    data remove storage asset:context this.List
    data remove storage asset:context this.FaceList

# 確率でテレポ
    #execute if predicate lib:random_pass_per/20 at @p[gamemode=!spectator] run function asset:mob/0059.jack_o_lantern/tick/spread_tp
