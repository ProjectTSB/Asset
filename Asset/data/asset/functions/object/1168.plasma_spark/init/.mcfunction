#> asset:object/1168.plasma_spark/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1168/init

# Tickをランダムに設定
    execute store result score @s General.Object.Tick run data get storage asset:context this.Tick
