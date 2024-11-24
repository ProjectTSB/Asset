#> asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
#
# 雷神無双 召喚処理
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/
#   asset:mob/0393.labyria_first/ai/animation/100_0_opening/


# マーカーを用意する
    tp 0-0-0-0-0 ~ ~ ~ ~ ~

# プレイヤーの位置に配置
    execute as @r[tag=!PlayerShouldInvulnerable,distance=..100] at @s run tp 0-0-0-0-0 ~ ~ ~ ~ ~

# 高さを調整
    data modify entity 0-0-0-0-0 Pos[1] set from entity @e[type=marker,tag=AX.Marker.SummonPoint,distance=..100,sort=nearest,limit=1] Pos[1]

# 拡散する
    data modify storage lib: Argument.Bounds set value [[2d,2d],[0,0],[2d,2d]]
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2002
    execute at 0-0-0-0-0 run function api:object/summon

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
