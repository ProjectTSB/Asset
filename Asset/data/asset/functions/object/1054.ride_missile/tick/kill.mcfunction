#> asset:object/1054.ride_missile/tick/kill
#
#
#
# @within function asset:object/1054.ride_missile/tick/

# 演出
    particle explosion ~ ~ ~ 0.3 0.3 0.3 1 10
    particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force
    playsound entity.generic.explode player @a ~ ~ ~ 1 1

# 隠し要素。10m以上離れた上で、ブロックに着弾したら音を鳴らす。その場所に到達できるかのチェックができる！
    execute if entity @p[tag=1054.Owner,distance=10..] unless block ^ ^ ^0.5 #lib:no_collision run playsound entity.arrow.hit_player player @p[tag=1054.Owner] ~ ~ ~ 0.3 0 0.3
    execute if entity @p[tag=1054.Owner,distance=10..] unless block ^ ^ ^1 #lib:no_collision run playsound entity.arrow.hit_player player @p[tag=1054.Owner] ~ ~ ~ 0.3 0 0.3

# 殺す
    kill @s
