#> asset:object/1019.voltage_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1019/init

# -2..2の範囲でtickを変える
    execute store result score @s General.Object.Tick run random value -2..2

# super.init
    function asset:object/super.init
