#> asset:mob/0330.aurora_reaper/hurt/step
#
# ステップ&移動速度バフ
#
# @within function asset:mob/0330.aurora_reaper/hurt/

# 乱数取得
    execute store result score $Random Temporary run random value 0..2

# 乱数ごとに角度の違うステップ
    data modify storage lib: Argument.VectorMagnitude set value 1.2
    execute if score $Random Temporary matches 0 facing entity @p[tag=Attacker] eyes rotated ~-180 -13 run function lib:motion/
    execute if score $Random Temporary matches 1 facing entity @p[tag=Attacker] eyes rotated ~90 -13 run function lib:motion/
    execute if score $Random Temporary matches 2 facing entity @p[tag=Attacker] eyes rotated ~-90 -13 run function lib:motion/
    scoreboard players reset $Random Temporary

# 移動速度付与
    effect give @s speed 2 0 true

# CTをセット
    data modify storage asset:context this.MotionCT set value 10

# 空中ジャンプ可能な回数をセット
    function api:global_vars/get_difficulty
    execute store result storage asset:context this.AirJumpCount int 2 run data get storage api: Return.Difficulty
