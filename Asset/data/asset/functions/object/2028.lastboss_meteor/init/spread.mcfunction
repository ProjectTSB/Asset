#> asset:object/2028.lastboss_meteor/init/spread
#
# マーカーを散らばらせる処理、被ってたら再帰する
#
# @within function
#   asset:object/2028.lastboss_meteor/init/
#   asset:object/2028.lastboss_meteor/init/spread

#> SpreadLib
# @private
#declare tag MeteorSpreadMarker

# 拡散
    data modify storage lib: Argument.Bounds set value [[24d,24d],[0d,0d],[24d,24d]]
    execute at @e[type=marker,tag=RW.Marker.SpawnPoint,limit=1] run function lib:spread_entity/

# 付近にメテオのマーカーオブジェクトがいなければ、マーカーの位置にオブジェクト召喚
    execute at @s unless entity @e[type=item_display,scores={ObjectID=2029},distance=0.1..6,limit=1] run function asset:object/2028.lastboss_meteor/init/summon_marker

# メテオのマーカーオブジェクトがあったら再帰する
#    execute at @s if entity @e[type=item_display,scores={ObjectID=2029},distance=0.1..6,limit=1] run function asset:object/2028.lastboss_meteor/init/spread
