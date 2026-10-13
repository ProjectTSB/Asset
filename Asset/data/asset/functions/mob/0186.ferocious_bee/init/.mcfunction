#> asset:mob/0186.ferocious_bee/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/186/init

# IsBabyの速度補正を打ち消すため、旋回中と突進中の速度をそれぞれ0.66667倍する
    execute store result storage asset:context this.MoveSpeed.Turn double 0.0066667 run data get storage asset:context this.MoveSpeed.Turn 100
    execute store result storage asset:context this.MoveSpeed.Charge double 0.0066667 run data get storage asset:context this.MoveSpeed.Charge 100

# 速度を初期化しておく
    data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage asset:context this.MoveSpeed.Turn

# スコアも初期化しておく
    execute store result score @s General.Mob.Tick run data get storage asset:context this.TurnTick -1
