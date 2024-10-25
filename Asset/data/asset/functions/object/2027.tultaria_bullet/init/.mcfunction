#> asset:object/2027.tultaria_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2027/init

#> 行き先マーカー
# @private
#declare tag FacingMarker

# マーカーの方向く
    execute facing entity @e[type=marker,tag=FacingMarker,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# キル
    kill @e[type=marker,tag=FacingMarker,limit=1]

# super
    function asset:object/super.init
