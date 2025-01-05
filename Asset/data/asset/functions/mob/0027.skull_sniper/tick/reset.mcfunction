#> asset:mob/0027.skull_sniper/tick/reset
#
# リセット処理
#
# @within function asset:mob/0027.skull_sniper/tick/**

# クールダウン
    execute store result score @s General.Mob.Tick run random value -50..-20

# 形態リセット
    data remove storage asset:context this.Target
