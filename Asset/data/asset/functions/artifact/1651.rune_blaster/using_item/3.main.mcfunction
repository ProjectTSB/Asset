#> asset:artifact/1651.rune_blaster/using_item/3.main
#
#
#
# @within function asset:artifact/1651.rune_blaster/using_item/2.check_condition

#> Private
# @private
    #declare score_holder $19V.UsingItemTime

# 演出
    execute if data storage asset:context UsingItemTime{mainhand:1} run playsound entity.zombie_villager.converted player @a ~ ~ ~ 1 2


# 既に魔法陣がいるかチェックし、いればreturnしてobject側の処理を呼び出す
    execute as @e[type=text_display,scores={ObjectID=1200},distance=..128] if score @s 19V.UserID = @p[tag=this] UserID run return run function asset:object/1200.rune_blaster_circle/call_from_artifact/

# いないなら召喚する
    data modify storage api: Argument.ID set value 1200
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^-0.35 ^0.5 run function api:object/summon
