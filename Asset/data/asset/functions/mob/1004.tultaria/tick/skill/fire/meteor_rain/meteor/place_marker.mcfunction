#> asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/pattern/1

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# マーカーに対して拡散処理を実行
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/spread
    
# マーカーキル
    kill @e[type=marker,tag=SpreadMarker,limit=1]
