#> asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/spread_marker
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/**

#> 行き先マーカー
# @private
#declare tag SpreadMarker

# 雷落とす用のマーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[2d,2d],[0d,0d],[2d,2d]]
    execute as @e[type=marker,tag=SpreadMarker,sort=nearest,limit=1] at @r[distance=..100] run function lib:spread_entity/

# マーカーの位置にオブジェクト召喚、ただし付近に雷マーカーがなければ
    execute at @e[type=marker,tag=SpreadMarker,sort=nearest,limit=1] unless entity @e[type=marker,scores={ObjectID=2041},distance=..3,limit=1] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/summon

# マーカーがあったら報告
#    execute at @e[type=marker,tag=SpreadMarker,sort=nearest,limit=1] if entity @e[type=marker,scores={ObjectID=2041},distance=..3,limit=1] run say 近いな！


# マーカーキル
    kill @e[type=marker,tag=SpreadMarker,sort=nearest,limit=1]

# 半径14m以内ではない 又は 他の歯車と重なっている場合再拡散する
    #execute at @s unless entity @e[type=zombie,tag=this,distance=..14,limit=1] run scoreboard players set $Continuation Temporary 1
    #execute at @s if entity @e[type=marker,tag=RW.TargetMarker,distance=0.01..8] run scoreboard players set $Continuation Temporary 1
    #execute if score $Continuation Temporary matches 1 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/spread
