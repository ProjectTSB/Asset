#> asset:object/2168.general_long_laser/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2168/init

#> Temp
# @private
#declare score_holder $Temporary

# フィールドのTickデータをスコアボードに移す
    execute store result score @s 2168.LifeTime run data get storage asset:context this.LifeTime

# 出現には少し時間をおく都合で、DisapperTickに数値をプラスしないといけない
    execute store result score $Temporary Temporary run data get storage asset:context this.DisappearTick
    scoreboard players operation $Temporary Temporary += $2 Const
    scoreboard players operation @s 2168.DisppearTick = $Temporary Temporary
    scoreboard players reset $Temporary
