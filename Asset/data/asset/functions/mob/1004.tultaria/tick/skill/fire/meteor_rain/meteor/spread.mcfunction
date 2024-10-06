#> asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/spread
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker
#   asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/spread

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    execute at @r[distance=..100] run function lib:spread_entity/

# マーカーの位置にオブジェクト召喚
    execute at @s unless entity @e[type=marker,scores={ObjectID=2041},distance=0.1..4,limit=1] positioned ~ ~40 ~ run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/summon

# 付近に雷落とすオブジェクトがいなければ、マーカーの位置にオブジェクト召喚
#    execute at @s unless entity @e[type=marker,scores={ObjectID=2041},distance=0.1..4,limit=1] run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/summon

# オブジェクトがあったら再帰する
#    execute at @s if entity @e[type=marker,scores={ObjectID=2041},distance=0.1..4,limit=1] run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/spread
