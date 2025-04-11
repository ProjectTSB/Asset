#> asset:mob/0175.queen_bee/remove/
#
#
#
# @within function asset:mob/alias/175/remove

# スポーンマーカー削除
    kill @e[type=marker,tag=4V.SpawnMarker,distance=..100]

# スーパーメソッド呼び出し
    function asset:mob/super.remove
