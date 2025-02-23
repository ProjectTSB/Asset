#> asset:mob/0330.aurora_reaper/hurt/step
#
# ステップ&移動速度バフ
#
# @within function asset:mob/0330.aurora_reaper/hurt/

# 乱数取得
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $3 Const

# 乱数ごとに角度の違うステップ
    data modify storage lib: Argument.VectorMagnitude set value 1.2
    execute if score $Random Temporary matches 0 facing entity @p[tag=Attacker] eyes rotated ~-180 -13 run function lib:motion/
    execute if score $Random Temporary matches 1 facing entity @p[tag=Attacker] eyes rotated ~90 -13 run function lib:motion/
    execute if score $Random Temporary matches 2 facing entity @p[tag=Attacker] eyes rotated ~-90 -13 run function lib:motion/

# 移動速度付与
    effect give @s speed 2 0 true

# CTをセット
    scoreboard players set @s 96.MotionCT 20
