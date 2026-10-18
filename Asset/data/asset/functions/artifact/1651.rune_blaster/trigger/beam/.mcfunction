#> asset:artifact/1651.rune_blaster/trigger/beam/
#
#
#
# @within function asset:artifact/1651.rune_blaster/trigger/3.main

#> Private
# @private
    #declare tag SpreadMarker

# 射程設定 (x2を入力)
    scoreboard players set $MaxRange Temporary 40

# ビーム
    # 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 1
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

#
    #execute at @e[tag=SpreadMarker] run particle flame ~ ~ ~ 0 0 0 0 1

# Markerの位置から再帰
    scoreboard players operation $Range Temporary = $MaxRange Temporary
    execute positioned as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] run function asset:artifact/1651.rune_blaster/trigger/beam/recursive

# ビームobject
#  データ設定
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.25f,0f,0.25f],Color:8291583,DisappearInterpolation:2,LifeTime:7}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players operation $MaxRange Temporary -= $Range Temporary
    execute positioned as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] rotated as @s run function api:object/summon

# リセット
    scoreboard players reset $Range Temporary
    scoreboard players reset $MaxRange Temporary
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
