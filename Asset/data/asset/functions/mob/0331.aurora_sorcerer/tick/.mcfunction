#> asset:mob/0331.aurora_sorcerer/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/331/tick

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1.3 0 0.235 1 ~ ~1.7 ~ 0.1 0.1 0.1 0 2 normal @a

# プレイヤーが近くにいる場合、自身に鈍足を付与
    execute if entity @p[gamemode=!spectator,distance=..12] run effect give @s slowness 1 3 true

# バックステップ関連
    # プレイヤーと非常に近い場合、かつ、Objectの足場が下にない場合、MotionCountスコアを増加
        execute if function asset:mob/0331.aurora_sorcerer/tick/backstep/check run scoreboard players add @s 97.MotionCount 1

    # バックステップのCD
        execute if entity @s[scores={97.MotionCT=1..}] run scoreboard players remove @s 97.MotionCT 1

    # MotionCountが一定以上でバックステップ
        execute if entity @s[scores={97.MotionCount=60..}] run function asset:mob/0331.aurora_sorcerer/tick/backstep/

# 足場生成関連
    # 足場生成不可Tickを制御
        execute store result storage asset:context this.CannotMakeScaffoldTick int 0.9999999999 run data get storage asset:context this.CannotMakeScaffoldTick

    # 条件を満たしたのなら、足場を生成
        execute if function asset:mob/0331.aurora_sorcerer/tick/make_scaffold/check run function asset:mob/0331.aurora_sorcerer/tick/make_scaffold/

# スコア制御
    scoreboard players add @s General.Mob.Tick 1

# ノクバ耐性を最大にする
    execute if entity @s[scores={General.Mob.Tick=0}] run attribute @s generic.knockback_resistance base set 10

# スキル実行
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0331.aurora_sorcerer/tick/shoot
