#> asset:mob/0027.skull_sniper/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/27/tick

# 状態制御
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0027.skull_sniper/tick/select/

# 攻撃処理
    execute if score @s General.Mob.Tick matches 0.. anchored eyes run function asset:mob/0027.skull_sniper/tick/attack/

# 加算
    scoreboard players add @s General.Mob.Tick 1
