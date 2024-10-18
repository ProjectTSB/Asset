#> asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/spread
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
#   asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/spread

# 拡散
    data modify storage lib: Argument.Bounds set value [[10d,10d],[0d,0d],[10d,10d]]
    execute at @r[distance=..100] run function lib:spread_entity/

# 付近に雷落とすオブジェクトがいなければ、マーカーの位置にオブジェクト召喚
    execute at @s unless entity @e[type=marker,scores={ObjectID=2041},distance=0.1..4,limit=1] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon

# 雷オブジェクトがあったら再帰する
    execute at @s if entity @e[type=marker,scores={ObjectID=2041},distance=0.1..4,limit=1] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/spread
