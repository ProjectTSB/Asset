#> asset:object/2084.snake_eye/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2084/hit_entity

#> prv
# @private
    #declare score_holder $current_time
    #declare score_holder $detonation_safe_time

# 爆発していい時間だったら爆発
    function asset:object/2084.snake_eye/tick/detonation_check
