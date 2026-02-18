#> asset:object/2028.lastboss_meteor/init/aiming_summon/
#
#
#
# @within function asset:object/2028.lastboss_meteor/init/

#> メテオの落下位置
# @private
#declare tag 2028.Marker.MeteorTarget

# Marker召喚
    execute at @r[gamemode=!spectator,distance=..100] run summon marker ~ ~ ~ {Tags:["2028.Marker.MeteorTarget"]}

# マーカーが地面に落ちる
    execute as @e[type=marker,tag=2028.Marker.MeteorTarget,limit=1] at @s run function asset:object/2028.lastboss_meteor/init/recursive_down

# メテオマーカー設置
    execute at @e[type=marker,tag=2028.Marker.MeteorTarget,limit=1] run function asset:object/2028.lastboss_meteor/init/summon_marker

# メテオがそっち向く
    tp @s ~ ~ ~ facing entity @e[type=marker,tag=2028.Marker.MeteorTarget,distance=..200,sort=nearest,limit=1]

# 拡散マーカーを消す
    kill @e[type=marker,tag=2028.Marker.MeteorTarget,distance=..200]
