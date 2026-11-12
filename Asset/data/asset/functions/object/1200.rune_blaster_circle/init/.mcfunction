#> asset:object/1200.rune_blaster_circle/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1200/init

# super.init
    function asset:object/super.init

# 神器側で定義されたスコアを自身に適用する
    execute store result score @s 19V.UserID run data get storage asset:context this.UserID
