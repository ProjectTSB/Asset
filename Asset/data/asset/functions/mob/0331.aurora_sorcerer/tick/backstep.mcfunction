#> asset:mob/0331.aurora_sorcerer/tick/backstep
#
# バックステップする
#
# @within function asset:mob/0331.aurora_sorcerer/tick/

# バックステップ
    data modify storage lib: Argument.VectorMagnitude set value 1.6
    execute facing entity @p[gamemode=!spectator] eyes rotated ~-180 -13 run function lib:motion/

# motionのクールタイム設定
    scoreboard players set @s 97.MotionCT 30

# リセット
    scoreboard players reset @s 97.MotionCount
