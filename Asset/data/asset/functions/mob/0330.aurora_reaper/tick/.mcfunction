#> asset:mob/0330.aurora_reaper/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/330/tick

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1.3 0 0.235 1 ~ ~1.7 ~ 0.1 0.1 0.1 0 2 normal @a

# motionCTの処理
    execute store result storage asset:context this.MotionCT int 0.9999999999 run data get storage asset:context this.MotionCT

# motionCTが0かつ、周囲64mにプレイヤーがいるかつ、空中ならプレイヤーの方へmotionする
    # execute if data storage asset:context this{MotionCT:0} unless data storage asset:context this{AirJumpCount:0} if block ~ ~-1 ~ #lib:no_collision/without_fluid if block ~ ~-2 ~ #lib:no_collision/without_fluid if block ~ ~-3 ~ #lib:no_collision/without_fluid run function asset:mob/0330.aurora_reaper/tick/air_jump
    execute if data storage asset:context this{MotionCT:0} if entity @p[gamemode=!spectator,distance=..64] if block ~ ~-1 ~ #lib:no_collision/without_fluid if block ~ ~-2 ~ #lib:no_collision/without_fluid if block ~ ~-3 ~ #lib:no_collision/without_fluid run function asset:mob/0330.aurora_reaper/tick/air_jump
