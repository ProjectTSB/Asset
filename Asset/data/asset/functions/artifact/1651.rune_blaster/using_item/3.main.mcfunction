#> asset:artifact/1651.rune_blaster/using_item/3.main
#
#
#
# @within function asset:artifact/1651.rune_blaster/using_item/2.check_condition

# 既に魔法陣がいるかチェックし、いればreturnしてobject側の処理を呼び出す
    execute as @e[type=text_display,scores={ObjectID=1200},distance=..128] if score @s 19V.UserID = @p[tag=this] UserID run return run function asset:object/1200.rune_blaster_circle/call_from_artifact/

# いないなら演出
    execute anchored eyes positioned ^ ^-0.35 ^0.675 run playsound entity.zombie_villager.converted player @a ~ ~ ~ 1 2

# いないなら召喚する
    data modify storage api: Argument.ID set value 1200
    execute if predicate lib:random_pass_per/50 run data modify storage api: Argument.FieldOverride.LeftRotate set value true
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^-0.35 ^0.675 run function api:object/summon
