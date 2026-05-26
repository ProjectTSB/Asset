#> asset:object/2028.lastboss_meteor/init/spread_summon/
#
#
#
# @within function asset:object/2028.lastboss_meteor/init/

#> SpreadLibとトゥルタリアの出現位置
# @private
    #declare tag MeteorSpreadMarker
    #declare tag RW.Marker.SpawnPoint

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["MeteorSpreadMarker"]}

# 拡散させる
    execute as @e[type=marker,tag=MeteorSpreadMarker,distance=..100,limit=1] at @e[type=marker,tag=RW.Marker.SpawnPoint,limit=1] run function asset:object/2028.lastboss_meteor/init/spread_summon/spread

# マーカーの方を向く
    tp @s ~ ~ ~ facing entity @e[type=marker,tag=MeteorSpreadMarker,distance=..200,sort=nearest,limit=1]

# 拡散マーカーを消す
    kill @e[type=marker,tag=MeteorSpreadMarker,distance=..200]
