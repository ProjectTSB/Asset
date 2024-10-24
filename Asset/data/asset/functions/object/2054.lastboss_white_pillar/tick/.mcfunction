#> asset:object/2054.lastboss_white_pillar/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2054/tick

# アニメ
    # 加算
        scoreboard players add @s 2054.Animation 1
    # 1
        execute if score @s 2054.Animation matches 10 run function asset:object/2054.lastboss_white_pillar/tick/animation/1
    # 2
        execute if score @s 2054.Animation matches 20 run function asset:object/2054.lastboss_white_pillar/tick/animation/2
    # 3
        execute if score @s 2054.Animation matches 30 run function asset:object/2054.lastboss_white_pillar/tick/animation/3
    # リセット
        scoreboard players reset @s[scores={2054.Animation=30..}] 2054.Animation

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# デカくなる
    execute if score @s General.Object.Tick matches 3 run function asset:object/2054.lastboss_white_pillar/tick/transform/1

# 誘導！
    function asset:object/2054.lastboss_white_pillar/tick/homing.m with storage asset:context this

# 縮む
    execute if score @s General.Object.Tick matches 60 run function asset:object/2054.lastboss_white_pillar/tick/transform/2

# しばらくしたらキル
    execute if score @s General.Object.Tick matches 65 run kill @s
