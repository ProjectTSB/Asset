#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/spread
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
#   asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/spread

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    execute at @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] run function lib:spread_entity/

# 付近(現在座標の数ブロック上）にオブジェクトがいなければ、マーカーの位置にオブジェクト召喚
    execute at @s positioned ~ ~5 ~ unless entity @e[type=item_display,scores={ObjectID=2043},distance=0.1..6,limit=1] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon

# オブジェクトがあったら再帰する
    execute at @s positioned ~ ~5 ~ if entity @e[type=item_display,scores={ObjectID=2043},distance=0.1..6,limit=1] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/spread
