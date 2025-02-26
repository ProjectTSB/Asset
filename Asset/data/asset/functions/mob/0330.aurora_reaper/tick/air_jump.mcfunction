#> asset:mob/0330.aurora_reaper/tick/air_jump
#
# 空中ジャンプする
#
# @within function asset:mob/0330.aurora_reaper/tick/

# 演出
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.1 1.9 0
    execute positioned ~ ~-0.2 ~ rotated ~ 0 run function asset:mob/0330.aurora_reaper/tick/vfx

# tpして向き合わせ
    tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] eyes

# 近くのプレイヤーにmotion
    data modify storage lib: Argument.VectorMagnitude set value 1.0
    execute facing entity @p[gamemode=!spectator] eyes rotated ~ ~-13 run function lib:motion/

# CT設定
    data modify storage asset:context this.MotionCT set value 15

# カウントを減らす
    # execute store result storage asset:context this.AirJumpCount int 0.9999999999 run data get storage asset:context this.AirJumpCount
