#> asset:mob/2003.abstract_eye/get_speed/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/2003/get_speed

# スピードを取得します
    execute store result storage asset:context this.Speed double 0.01 run attribute @s generic.movement_speed get 100
