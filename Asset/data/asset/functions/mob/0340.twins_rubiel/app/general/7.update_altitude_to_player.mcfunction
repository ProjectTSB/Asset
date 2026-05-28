#> asset:mob/0340.twins_rubiel/app/general/7.update_altitude_to_player
#
# 汎用処理 プレイヤーに高度を合わせる
#
# @within asset:mob/0340.twins_rubiel/tick/**

# プレイヤー方面に移動
    execute at @s facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet positioned ^ ^ ^1 rotated ~ 0 positioned ^ ^ ^-1 rotated as @s if block ~ ~-0.1 ~ #lib:no_collision/ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
