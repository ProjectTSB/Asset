#> asset:mob/0266.small_dark_ball/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/0266.small_dark_ball/_/init

#> SpreadLib
# @private
    #declare tag SpreadMarker

# ハード以上なら確率で低速弾になる
    execute if predicate lib:random_pass_per/50 run tag @s add 7E.SlowBullet

# こっち向く
    execute facing entity @p[gamemode=!spectator,distance=..30] eyes run tp @s ~ ~ ~ ~ ~

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# ステータス設定
    data modify storage lib: Argument.Distance set value 5
    data modify storage lib: Argument.Spread set value 1

# 拡散
    execute facing entity @p[gamemode=!spectator,distance=..30] eyes as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# マーカーをkill
    kill @e[type=marker,tag=SpreadMarker]
