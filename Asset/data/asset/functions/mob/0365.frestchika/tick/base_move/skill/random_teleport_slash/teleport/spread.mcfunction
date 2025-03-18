#> asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/teleport/spread
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/teleport/

#> SpreadLib
# @private
#declare tag SpreadMarker

# 飛ぶ前の演出
#    function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/vfx

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,5.0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @r[gamemode=!spectator,distance=..64] run function lib:spread_entity/

# その座標にブロックがなければテレポートを確定
    execute at @e[type=marker,tag=SpreadMarker,limit=1] if block ~ ~ ~ #lib:no_collision run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/teleport/confirm

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]
