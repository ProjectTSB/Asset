#> asset:object/2050.lastboss_light_pillar/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2050/init

#> 行き先マーカー
# @private
#declare tag FacingMarker

# 伸びる
    data modify entity @s start_interpolation set value 0
    data modify entity @s interpolation_duration set value 3
    data modify entity @s transformation.scale set value [1.0f,1.0f,20.0f]

# マーカーの方向く
    execute facing entity @e[type=marker,tag=FacingMarker,limit=1] eyes run tp @s ~ ~ ~ ~ 0

# キル
    kill @e[type=marker,tag=FacingMarker,limit=1]

# Super!
    function asset:object/super.init
