#> asset:artifact/0172.icicle/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/172/click/

# 演出
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0

# Icicle Manager を召喚する
    data modify storage api: Argument.ID set value 1069
    data modify storage api: Argument.FieldOverride.DamagePerHit set value 550
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.WaitingTick set value 8
    data modify storage api: Argument.FieldOverride.Range set value 16
    execute rotated ~ 0 positioned ^ ^6 ^1 if block ~ ~ ~ #lib:no_collision run function api:object/summon
