#> asset:object/2027.tultaria_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2027/init

#> 行き先マーカーと弾速ストレージ
# @private
#declare tag FacingMarker
#declare storage rw_shotspeed:

# マーカーの方向く
    execute facing entity @e[type=marker,tag=FacingMarker,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# キル
    kill @e[type=marker,tag=FacingMarker,limit=1]

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
