#> asset:mob/0058.divide_haze/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/58/hurt

# DoT は受け付けないものとする
    execute if data storage asset:context Hurt{IsDoT:true} run return fail

# 増殖カウント減少
    scoreboard players remove @s General.Mob.Tick 10
