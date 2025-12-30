#> asset:object/1011.456_dice/tick/drum_roll
#
#
#
# @within function asset:object/1011.456_dice/tick/

#> Private
# @private
    #declare score_holder $Interval

# ドラムロール
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 run particle note ~ ~0.8 ~ 0 0 0 0 1 force
    execute if score $Interval Temporary matches 0 run playsound minecraft:block.note_block.snare neutral @a ~ ~ ~ 1 1.5
    execute if score $Interval Temporary matches 2 run playsound minecraft:block.note_block.snare neutral @a ~ ~ ~ 1 1
    scoreboard players reset $Interval Temporary
