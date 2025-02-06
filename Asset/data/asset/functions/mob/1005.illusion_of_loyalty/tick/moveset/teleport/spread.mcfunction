#> asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/spread
#
#
#
# @within function
#   asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/
#   asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/spread

#> トゥルの出現地点
# @private
    #declare tag RW.Marker.SpawnPoint
    #declare tag SpreadMarker

# 飛ぶ前の演出
    function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/vfx

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0.0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] positioned ~ ~0.5 ~ run function lib:spread_entity/

# テレポートを確定
    execute at @e[type=marker,tag=SpreadMarker,limit=1] run tp @s ~ ~ ~
    execute at @s run tp @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] ~ ~ ~
    execute at @s run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/vfx

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]

# 同じIDのモブが付近にいなければ、テレポートを確定
#    execute at @s unless entity @e[type=wither_skeleton,tag=!this,scores={MobID=1005},distance=..5,limit=1] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/vfx
#    execute at @s unless entity @e[type=wither_skeleton,tag=!this,scores={MobID=1005},distance=..5,limit=1] run tp @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] ~ ~ ~

# 同じIDのモブが付近にいたら再帰する
#    execute at @s if entity @e[type=wither_skeleton,tag=!this,scores={MobID=1005},distance=..5,limit=1] if entity @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/spread
