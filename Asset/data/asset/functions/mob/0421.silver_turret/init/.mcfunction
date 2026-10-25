#> asset:mob/0421.silver_turret/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/421/init

# スコア初期化
    execute store result score @s General.Mob.Tick run random value -150..-80
