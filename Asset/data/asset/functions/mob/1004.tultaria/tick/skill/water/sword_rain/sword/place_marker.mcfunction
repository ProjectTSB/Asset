#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/**

#> Private
# @private
    #declare tag SpreadMarker

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# マーカーに対して拡散処理を実行
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/spread

# マーカーキル
    kill @e[type=marker,tag=SpreadMarker,limit=1]
