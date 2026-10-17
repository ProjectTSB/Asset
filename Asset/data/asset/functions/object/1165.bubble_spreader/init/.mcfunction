#> asset:object/1165.bubble_spreader/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1165/init

# -5..2の範囲でtickを変える
    execute store result score @s General.Object.Tick run random value -5..2

# super.init
    function asset:object/super.init
