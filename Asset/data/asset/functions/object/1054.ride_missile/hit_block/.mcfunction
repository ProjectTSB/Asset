#> asset:object/1054.ride_missile/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1054/hit_block


# 隠し要素。10m以上離れた上で、ブロックに着弾したら音を鳴らす。その場所に到達できるかのチェックができる！
    execute if entity @p[tag=1054.Owner,distance=10..] run playsound entity.arrow.hit_player neutral @p[tag=1054.Owner] ~ ~ ~ 0.3 0 0.3
    execute if entity @p[tag=1054.Owner,distance=10..] run playsound entity.arrow.hit_player neutral @p[tag=1054.Owner] ~ ~ ~ 0.3 0 0.3

function asset:object/super.method
