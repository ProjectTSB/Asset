#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon/marker
#
# マーカーを拡散させて呼び出す
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/windup

#> SpreadLib
# @private
#declare tag SpreadMarker

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,5.0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @r[gamemode=!spectator,distance=..256] run function lib:spread_entity/

# その座標にブロックがなければマーカーを置く
    execute at @e[type=marker,tag=SpreadMarker,limit=1] if block ~ ~ ~ #lib:no_collision run summon marker ~ ~ ~ {Tags:["C5.Marker","C5.Marker.SummonPoint"]}

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]

# サウンド
    playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 0.5 1.5
