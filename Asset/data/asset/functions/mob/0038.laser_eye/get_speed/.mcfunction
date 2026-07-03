#> asset:mob/0038.laser_eye/get_speed/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/38/get_speed

# まず普通にsuperする
    function asset:mob/super.method

# プレイヤーが近ければ速度を-1倍する
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..6] store result storage asset:context this.Speed double -0.01 run data get storage asset:context this.Speed 100
