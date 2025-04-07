#> asset:mob/0175.queen_bee/tick/common/tp/spread_teleport
#
#
#
# @within function asset:mob/0175.queen_bee/tick/**

# 演出
    particle dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.7 0.9 0

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 中央マーカーから拡散（埋まってたら知らん。そもそも中央を起点にTPしてんだから埋めに行ってるだろそれは）
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @e[type=marker,tag=4V.SpawnMarker,sort=nearest,limit=1] run function lib:spread_entity/

# テレポートを確定
    execute at @e[type=marker,tag=SpreadMarker,limit=1] run tp @s ~ ~ ~


# displayの調整
    execute at @s on passengers positioned as @s run tp @s ~ ~ ~ ~ ~

# リセット
    kill @e[type=marker,tag=SpreadMarker]
