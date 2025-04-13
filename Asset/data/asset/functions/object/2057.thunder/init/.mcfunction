#> asset:object/2057.thunder/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2057/init

# フィールドのTickを代入
    execute store result score @s General.Object.Tick run data get storage asset:context this.Tick

# -1倍する
    scoreboard players operation @s General.Object.Tick *= $-1 Const

# 予告を召喚
    data modify storage api: Argument.FieldOverride set value {Color:14266641,Scale:[4f,4f,0.01f]}
    execute store result storage api: Argument.FieldOverride.Tick int 0.999999999 run data get storage asset:context this.Tick 0.999999999
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
