#> asset:mob/0060.self_destructor/tick/waiting_explode
#
#
#
# @within function asset:mob/0060.self_destructor/tick/

#> Private
# @private
    #declare score_holder $Interval

# 爆破カウントスコア
    scoreboard players add @s 1O.ExplodeFuse 1

# 発光
    effect give @s glowing infinite 0 true

# 爆破待機のバフ 完全に停止はノーマル以下だけ
    effect give @s resistance 10 10 true
    execute if predicate api:global_vars/difficulty/max/normal run effect give @s slowness 10 9 true
    execute if predicate api:global_vars/difficulty/min/hard run effect give @s slowness 10 2 true

# vfx
    scoreboard players operation $Interval Temporary = @s 1O.ExplodeFuse
    scoreboard players operation $Interval Temporary %= $6 Const
    execute if score $Interval Temporary matches 0 rotated ~ 0 run function asset:mob/0060.self_destructor/tick/vfx
    execute if score $Interval Temporary matches 3 rotated ~4.5 0 run function asset:mob/0060.self_destructor/tick/vfx
    scoreboard players reset $Interval Temporary

# SE
    scoreboard players operation $Interval Temporary = @s 1O.ExplodeFuse
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:block.note_block.bit hostile @a ~ ~ ~ 1 1
    scoreboard players reset $Interval Temporary
