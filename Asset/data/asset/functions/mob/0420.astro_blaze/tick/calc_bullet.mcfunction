#> asset:mob/0420.astro_blaze/tick/calc_bullet
#
# 弾数を設定する
#
# @within function asset:mob/0420.astro_blaze/tick/

#> Private
# @private
    #declare score_holder $Difficulty

# 難易度比例で弾数を設定する
# 4+2N
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    execute store result storage asset:context this.Bullet int 1 run scoreboard players add $Difficulty Temporary 4
    scoreboard players reset $Difficulty Temporary
