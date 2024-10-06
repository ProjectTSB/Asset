#> asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/summon
#
# 召喚処理
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
#   asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_aiming

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    execute at @r[distance=..100] run function lib:spread_entity/

# 召喚IDを指定
    data modify storage api: Argument.ID set value 2028

# マーカーの位置にオブジェクト召喚
    execute at @s unless entity @e[type=marker,scores={ObjectID=2041},distance=0.1..4,limit=1] positioned ~ ~40 ~ run function api:object/summon
