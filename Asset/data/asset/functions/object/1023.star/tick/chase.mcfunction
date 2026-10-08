#> asset:object/1023.star/tick/chase
#
#
#
# @within function asset:object/1023.star/tick/

#> Private
# @private
    #declare tag Target

# 追尾
    execute positioned ^ ^ ^3 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..3] add Target
    execute unless entity @e[type=#lib:living_without_player,tag=Target,distance=..3] positioned ^ ^ ^15 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10] add Target
    execute facing entity @e[type=#lib:living_without_player,tag=Target,distance=..25,sort=nearest,limit=1] eyes positioned ^ ^ ^-80 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
    tag @e[type=#lib:living_without_player,tag=Target,distance=..30] remove Target
