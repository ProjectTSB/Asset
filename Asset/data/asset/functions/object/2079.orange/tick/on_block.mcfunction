#> asset:object/2079.orange/tick/on_block
#
# 地面に着いているときの処理
#
# @within function asset:object/2079.orange/tick/

#> Private
# @private
    #declare score_holder $Temp

# 一定間隔で音を鳴らす
    scoreboard players operation $Temp Temporary = @s General.Object.Tick
    scoreboard players operation $Temp Temporary %= $10 Const
    execute if score $Temp Temporary matches 0 run playsound block.note_block.pling hostile @a ~ ~ ~ 0.3 2 0
    scoreboard players reset $Temp Temporary

# 爆発
    execute if entity @s[scores={General.Object.Tick=239..}] run function asset:object/2079.orange/tick/boom
