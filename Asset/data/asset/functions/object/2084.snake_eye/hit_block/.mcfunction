#> asset:object/2084.snake_eye/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2084/hit_block

# 爆発していい時間だったら爆発
    function asset:object/2084.snake_eye/tick/detonation_check

# 爆発してよくなかった場合動きを止め、tickで爆発できるようにtagをつけておく
    data modify storage asset:context this.Speed set value 0
    tag @s add 2084.Grounded
