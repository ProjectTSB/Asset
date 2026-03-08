#> asset:object/2262.gem_panjan_drone/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2262/init

# 実行角度に合わせる
    tp @s ~ ~ ~ ~ 0

# ID割り当て
    execute store result score @s CO.ObjectId run data get storage asset:context this.ObjectId

# モデル召喚
    function asset:object/2262.gem_panjan_drone/init/animated_java

# 仮
    scoreboard players set @s 2262.IdleTime 60

# タイマー計算
    # IdleTimeは予備動作を考慮して短縮
    scoreboard players remove @s 2262.IdleTime 25
    execute store result score @s 2262.PredictionTime run scoreboard players get @s 2262.IdleTime
    scoreboard players remove @s 2262.PredictionTime 30
