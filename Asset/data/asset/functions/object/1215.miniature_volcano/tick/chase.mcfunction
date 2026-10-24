#> asset:object/1215.miniature_volcano/tick/chase
#
#
#
# @within function asset:object/1215.miniature_volcano/tick/

#> Private
# @private
    #declare tag Target

# 追尾
    execute positioned ^ ^ ^3 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..3] add Target
    execute unless entity @e[type=#lib:living_without_player,tag=Target,distance=..6] positioned ^ ^ ^10 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..8] add Target
    execute facing entity @e[type=#lib:living_without_player,tag=Target,distance=..18,sort=nearest,limit=1] eyes positioned ^ ^ ^-120 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
    tag @e[type=#lib:living_without_player,tag=Target,distance=..18] remove Target
