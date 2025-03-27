#> asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
#
# マーカーをおいて拡散処理を実行
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/**

#> Private
# @private
    #declare tag SpreadMarker

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# マーカーに対して拡散処理を実行
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @s run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/spread

# マーカーキル
    kill @e[type=marker,tag=SpreadMarker,limit=1]
