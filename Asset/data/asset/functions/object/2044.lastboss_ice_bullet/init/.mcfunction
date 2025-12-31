#> asset:object/2044.lastboss_ice_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2044/init

#> 行き先マーカー
# @private
#declare tag FacingMarker

# ユーザーIDをフィールドにいれる
    execute store result storage asset:context this.TargetID int 1 run scoreboard players get @p[gamemode=!spectator,distance=..64] UserID

# マーカーの方向く
#    execute facing entity @e[type=marker,tag=FacingMarker,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# キル
#    kill @e[type=marker,tag=FacingMarker,limit=1]

# super
    function asset:object/super.init
