#> asset:mob/0186.ferocious_bee/tick/reset
#
#
#
# @within function asset:mob/0186.ferocious_bee/tick/

# tick初期化
    execute store result score @s General.Mob.Tick run data get storage asset:context this.TurnTick -1

# 速度初期化
    data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage asset:context this.MoveSpeed.Turn
