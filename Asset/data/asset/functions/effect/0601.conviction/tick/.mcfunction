#> asset:effect/0601.conviction/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0601.conviction/_/tick

#> Private
# @private
    #declare score_holder $Temp

# 演出
    execute if predicate lib:random_pass_per/10 run particle block redstone_block ~ ~0.8 ~ 0.4 0.6 0.4 0 1 normal @a

# スコア加算
    scoreboard players add @s 601.Tick 1

# 音
    scoreboard players operation $Temp Temporary = @s 601.Tick
    scoreboard players operation $Temp Temporary %= $30 Const
    execute if score $Temp Temporary matches 0 run playsound entity.player.hurt_sweet_berry_bush player @a ~ ~ ~ 0.25 0.5 0
    execute if score $Temp Temporary matches 0 run playsound entity.spider.step player @a ~ ~ ~ 0.8 1.2 0
    scoreboard players reset $Temp Temporary
