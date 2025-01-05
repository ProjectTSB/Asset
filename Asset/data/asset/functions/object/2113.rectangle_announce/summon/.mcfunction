#> asset:object/2113.rectangle_announce/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2113/summon

# ScaleからXだけ取り出す
    data modify storage asset:context this.ScaleX set from storage asset:context this.Scale[0]

# 元となるEntityを召喚する
    function asset:object/2113.rectangle_announce/summon/.m with storage asset:context this
