#> asset:object/1195.creeper_glove_right/tick/blink
#
# 4tickごとに明るさを15と0で切り替えてチカチカさせる
#
# @within function asset:object/1195.creeper_glove_right/tick/main

#> Private
# @private
    #declare score_holder $Phase

# 8tick周期の位置 (0..3: 明るい, 4..7: 暗い) 切り替わるtickだけ書き換える
    scoreboard players operation $Phase Temporary = @s General.Object.Tick
    scoreboard players operation $Phase Temporary %= $8 Const
    execute if score $Phase Temporary matches 0 run data modify entity @s brightness set value {block:15,sky:15}
    execute if score $Phase Temporary matches 4 run data modify entity @s brightness set value {block:0,sky:0}

# リセット
    scoreboard players reset $Phase Temporary
