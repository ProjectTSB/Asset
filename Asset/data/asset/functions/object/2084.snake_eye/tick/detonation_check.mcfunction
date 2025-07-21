#> asset:object/2084.snake_eye/tick/detonation_check
#
# 
#
# @within function asset:object/2084.snake_eye/hit_block/
# @within function asset:object/2084.snake_eye/hit_entity/
# @within function asset:object/2084.snake_eye/tick/

#> prv
# @private
    #declare score_holder $current_time
    #declare score_holder $detonation_safe_time

# 起爆判定に使う数値を取得
    execute store result score $current_time Temporary run time query gametime
    execute store result score $detonation_safe_time Temporary run data get storage asset:context this.detonation_safe_time 1

# 停止した後起爆時間を迎えたら爆発
    execute if score $current_time Temporary >= $detonation_safe_time Temporary run function asset:object/2084.snake_eye/kill/
