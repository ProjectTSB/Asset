#> asset:mob/0237.lunatic_mage/remove/
#
#
#
# @within function asset:mob/alias/237/remove

# super.remove
    function asset:mob/super.remove

# 初期地点markerをキル
    kill @e[type=marker,tag=6L.SpawnPoint,distance=..100,limit=1]
