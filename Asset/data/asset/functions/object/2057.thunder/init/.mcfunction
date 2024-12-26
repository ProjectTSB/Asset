#> asset:object/2057.thunder/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2057/init

# フィールドのTickを代入
    execute store result score @s General.Object.Tick run data get storage asset:context this.Tick

# -1倍する
    scoreboard players operation @s General.Object.Tick *= $-1 Const
