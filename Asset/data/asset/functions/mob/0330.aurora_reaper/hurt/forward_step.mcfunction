#> asset:mob/0330.aurora_reaper/hurt/forward_step
#
# 前進する
#
# @within function asset:mob/0330.aurora_reaper/hurt/

# 乱数取得
    execute store result score $Random Temporary run random value 0..2

# motionする
    data modify storage lib: Argument.VectorMagnitude set value 1.5
    execute if score $Random Temporary matches 0 facing entity @p[tag=Attacker] eyes rotated ~ ~-13 run function lib:motion/
    execute if score $Random Temporary matches 1 facing entity @p[tag=Attacker] eyes rotated ~20 ~-13 run function lib:motion/
    execute if score $Random Temporary matches 2 facing entity @p[tag=Attacker] eyes rotated ~-20 ~-13 run function lib:motion/

# リセット
    scoreboard players reset $Random Temporary

# CTをセット
    data modify storage asset:context this.MotionCT set value 10

# 空中ジャンプ可能な回数をセット
    # data modify storage asset:context this.AirJumpCount set value 5
