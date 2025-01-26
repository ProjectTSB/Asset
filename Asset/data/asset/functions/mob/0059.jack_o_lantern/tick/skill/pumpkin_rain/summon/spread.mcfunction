#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/spread
#
# 拡散して召喚
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/select_pos

#> SpreadLib
# @private
    #declare tag SpreadMarker

# スポーン地点にマーカーを召喚し拡散
# その座標で召喚する
    execute at @e[type=marker,tag=1N.SpawnMarker,distance=..30] run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[15d,15d],[0d,0d],[15d,15d]]
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @s run function lib:spread_entity/
    execute at @e[type=marker,tag=SpreadMarker,limit=1] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker]
