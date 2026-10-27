#> asset:artifact/1590.rice_cooker/using_item/charge
#
#
#
# @within function asset:artifact/1590.rice_cooker/using_item/2.check_condition

#> private
# @private
    #declare score_holder $Charge
    #declare score_holder $12
    #declare score_holder $4

# チャージ時間に応じてEffect392のスタック更新&演出
    execute store result score $Charge Temporary run data get storage asset:context UsingItemTime.mainhand

    execute if score $Charge Temporary matches 12 run playsound block.note_block.chime player @a ~ ~ ~ 1 0.75
    execute if score $Charge Temporary matches 24 run playsound block.note_block.chime player @a ~ ~ ~ 1 1.0
    execute if score $Charge Temporary matches 36 run playsound block.note_block.chime player @a ~ ~ ~ 1 1.5

    data modify storage api: Argument.ID set value 392
    scoreboard players operation $Charge Temporary /= $12 Const
    scoreboard players add $Charge Temporary 1
    execute store result storage api: Argument.Stack int 1 run scoreboard players operation $Charge Temporary < $4 Const
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Charge Temporary
