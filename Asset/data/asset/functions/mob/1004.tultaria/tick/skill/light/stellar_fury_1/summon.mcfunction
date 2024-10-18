#> asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/summon
#
# 星を召喚
#
# @within function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tick

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散する
    data modify storage lib: Argument.Bounds set value [[35d,35d],[2d,5d],[35d,35d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..100] at @s positioned ~ ~15 ~ run function lib:spread_entity/

# オブジェクト2030を召喚
    data modify storage api: Argument.ID set value 2030
    execute at @e[type=marker,tag=SpreadMarker,distance=..100] run function api:object/summon

# 演出
    execute at @a[distance=..100] run playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1

# キル
    kill @e[type=marker,tag=SpreadMarker,distance=..100]
