#> asset:object/2261.gem_yeeter_drone/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2261/init

# 実行角度に合わせる
    tp @s ~ ~ ~ ~ 0

# ID割り当て
    execute store result score @s CO.ObjectId run data get storage asset:context this.ObjectId

# モデル召喚
    function asset:object/2261.gem_yeeter_drone/init/animated_java

# 仮
    scoreboard players set @s 2261.IdleTime 100
    # tag @s add 2261.IsRotate.Inverse

# 回転有無
    execute if data storage asset:context this{IsRotate:true} run tag @s add 2261.IsRotate
    execute if data storage asset:context this{IsRotateInverse:true} run tag @s add 2261.IsRotate.Inverse

# タイマー計算
    # IdleTimeは予備動作を考慮して短縮
    scoreboard players remove @s 2261.IdleTime 40
    execute if score @s 2261.IdleTime matches ..-1 run scoreboard players set @s 2261.IdleTime 0
    execute store result score @s 2261.PredictionTime run scoreboard players get @s 2261.IdleTime
    scoreboard players remove @s 2261.PredictionTime 30
