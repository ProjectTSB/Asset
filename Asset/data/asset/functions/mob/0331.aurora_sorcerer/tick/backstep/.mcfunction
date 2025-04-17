#> asset:mob/0331.aurora_sorcerer/tick/backstep/
#
# バックステップする
#
# @within function asset:mob/0331.aurora_sorcerer/tick/

# バックステップ
    data modify storage lib: Argument.VectorMagnitude set value 1.6
    execute facing entity @p[gamemode=!spectator,distance=..32] eyes rotated ~-180 -13 run function lib:motion/

# motionのクールタイム設定
    scoreboard players set @s 97.MotionCT 30

# 足場生成不可Tickを設定
    data modify storage asset:context this.CannotMakeScaffoldTick set value 9

# リセット
    scoreboard players reset @s 97.MotionCount
