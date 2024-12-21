#> asset:object/2028.lastboss_meteor/init/spread_summon/spread
#
# ランダムな座標に移動してメテオのマーカーを置く
#
# @within function
#   asset:object/2028.lastboss_meteor/init/spread_summon/
#   asset:object/2028.lastboss_meteor/init/spread_summon/spread

#> SpreadLib
# @private
#declare tag MeteorSpreadMarker

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    function lib:spread_entity/

# マーカーを地面に下ろす
    execute at @s run function asset:object/2028.lastboss_meteor/init/recursive_down

# 付近にメテオのマーカーオブジェクトがいなければ、マーカーの位置にオブジェクト召喚
    execute at @s unless entity @e[type=item_display,scores={ObjectID=2029},distance=0.1..6,limit=1] run function asset:object/2028.lastboss_meteor/init/summon_marker

# メテオのマーカーオブジェクトがあったら再帰する
    execute at @s if entity @e[type=item_display,scores={ObjectID=2029},distance=0.1..6,limit=1] run function asset:object/2028.lastboss_meteor/init/spread_summon/spread
