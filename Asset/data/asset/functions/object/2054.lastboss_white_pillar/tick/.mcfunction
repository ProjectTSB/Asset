#> asset:object/2054.lastboss_white_pillar/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2054/tick

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

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

# 演出
    particle electric_spark ~ ~ ~ 0.3 0.1 0.3 0.5 5 force @a[distance=..32]
    particle end_rod ~ ~0.25 ~ 0.5 0.1 0.5 0.01 2 force @a[distance=..32]
    particle end_rod ~ ~9 ~ 0.3 5 0.3 0.05 2
    particle dust 1 1 1 0.5 ~ ~5 ~ 0.3 5 0.3 0 30

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick

# サウンド
    scoreboard players operation $Interval Temporary %= $9 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:block.beacon.ambient neutral @a ~ ~ ~ 2 1.5

# デカくなる
    execute if score @s General.Object.Tick matches 3 run function asset:object/2054.lastboss_white_pillar/tick/transform/1

# ダメージ判定
    scoreboard players operation $Interval Temporary %= $6 Const
    execute if score $Interval Temporary matches 0 positioned ~-0.5 ~1 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0,dy=5] run function asset:object/2054.lastboss_white_pillar/tick/damage

# 誘導！
    function asset:object/2054.lastboss_white_pillar/tick/homing.m with storage asset:context this

# 縮む
    execute if score @s General.Object.Tick matches 95 run function asset:object/2054.lastboss_white_pillar/tick/transform/2

# しばらくしたらキル
    execute if score @s General.Object.Tick matches 100 run kill @s
