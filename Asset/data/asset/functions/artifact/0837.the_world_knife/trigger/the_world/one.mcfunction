#> asset:artifact/0837.the_world_knife/trigger/the_world/one
#
#
#
# @within function asset:artifact/0837.the_world_knife/trigger/the_world/

#> private
# @private
    #declare tag SpreadMarker

# 拡散用marker召喚
    execute anchored eyes run summon marker ^ ^ ^ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[3d,3d],[0d,1.5d],[3d,3d]]
    execute at @s as @e[type=marker,tag=SpreadMarker,distance=..20] run function lib:spread_entity/
# 拡散したマーカーの上空に召喚
    execute at @e[type=marker,tag=SpreadMarker,distance=..20] facing entity @s feet positioned ^ ^ ^-2 facing entity @s eyes run function asset:artifact/0837.the_world_knife/trigger/summon_knife.m {TheWorld:"true",Spread:0.25,DamageMin:150,DamageMax:170}
# 前方拡散をキル
    kill @e[type=marker,tag=SpreadMarker,distance=..20]
