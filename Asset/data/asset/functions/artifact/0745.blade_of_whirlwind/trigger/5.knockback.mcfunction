#> asset:artifact/0745.blade_of_whirlwind/trigger/5.knockback
#
#
#
# @within function asset:artifact/0745.blade_of_whirlwind/trigger/3.main

#> Private
# @private
#declare score_holder $VectorMagnitude

scoreboard players operation $VectorMagnitude Temporary = $Speed Temporary
scoreboard players operation $VectorMagnitude Temporary *= $5 Const
scoreboard players operation $VectorMagnitude Temporary < $5000 Const

# 代入する
    execute store result storage lib: Argument.VectorMagnitude double 0.01 run scoreboard players get $VectorMagnitude Temporary

# 引数の設定
    data modify storage lib: Argument.KnockbackResist set value 1b

# 攻撃対象のMobをプレイヤーの向いてる方向にmotionで吹き飛ばす
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..6] at @s rotated as @p[tag=this,distance=..6] rotated ~ ~-15 run function lib:motion/

# リセット
    scoreboard players reset $VectorMagnitude Temporary
    data remove storage lib: Argument
