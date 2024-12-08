#> asset:mob/0378.red_knight_v3/tick/90.tp/spread_facing_tp
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/90.tp/main

#> tag
# @private
    #declare tag SpreadMarker

# 拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
# 実行前に拡散値がされていない場合、デフォルト値を入れる
    execute unless data storage lib: Argument.Bounds run data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,3d],[8d,8d]]

# 実行
    execute at @p[gamemode=!spectator] as @e[type=marker,tag=SpreadMarker,distance=..80,sort=nearest,limit=1] run function lib:spread_entity/

# 自分をマーカーに向けて再帰TP
    function asset:mob/0378.red_knight_v3/tick/90.tp/loop_tp

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]
