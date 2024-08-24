#> asset:mob/1020.throwing_sword/tick/homing_move
#
# 移動処理
#
# @within function asset:mob/1020.throwing_sword/tick/2.tick

# 胴体狙って欲しいのでマーカーを召喚してそこに誘導させる
    execute at @p anchored feet positioned ^ ^1.5 ^ run summon marker ~ ~ ~ {Tags:["SC.Marker.Target"]}

# ホーミング移動
    execute facing entity @e[type=marker,tag=SC.Marker.Target,sort=nearest,limit=1] eyes positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# パーティクル
    execute positioned ~ ~ ~ if predicate lib:random_pass_per/30 rotated ~ 0 run particle minecraft:flame ~ ~ ~ 0.02 0.02 0.02 0 1

# リセット
    kill @e[type=marker,tag=SC.Marker.Target]
