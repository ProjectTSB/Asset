#> asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/summon
#
# 星を召喚
#
# @within function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tick

#> Private
# @private
    #declare tag SpreadMarker

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散する
    data modify storage lib: Argument.Bounds set value [[35d,35d],[2d,5d],[35d,35d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..100] at @s positioned ~ ~15 ~ run function lib:spread_entity/

# 発射体のデータを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# オブジェクト2030を召喚
    data modify storage api: Argument.ID set value 2030
    execute at @e[type=marker,tag=SpreadMarker,distance=..100] run function api:object/summon

# キル
    kill @e[type=marker,tag=SpreadMarker,distance=..100]
