#> asset:artifact/1121.inferno_rush/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1121/click/

# 召喚
    data modify storage api: Argument.ID set value 1075
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ~ ~1.3 ~ positioned ^ ^ ^1.6 anchored eyes run function api:object/summon

# 演出
    particle lava ~ ~ ~ 0 0 0 0 30
    particle flame ~ ~ ~ 0 0 0 0 30
    playsound entity.lightning_bolt.thunder neutral @a ~ ~ ~ 0.7 2
    playsound entity.lightning_bolt.thunder neutral @a ~ ~ ~ 0.7 2
    playsound entity.lightning_bolt.impact neutral @a ~ ~ ~ 0.7 0
