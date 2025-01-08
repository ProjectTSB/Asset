#> asset:mob/0372.tutankhamen/tick/skill/many_shoot/spread
#
# 拡散して召喚する
#
# @within function asset:mob/0372.tutankhamen/tick/skill/many_shoot/

#> SpreadLib
# @private
    #declare tag SpreadMarker

# 拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[3.5d,3.5d],[0.3d,0d],[3.5d,3.5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] at @s run function lib:spread_entity/
    execute at @e[type=marker,tag=SpreadMarker,distance=..20,limit=1] summon marker run function asset:mob/0372.tutankhamen/tick/skill/many_shoot/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker]
