#> asset:mob/0301.karmic/tick/common/spread_tp/main
#
#
#
# @within function asset:mob/0301.karmic/tick/**

#> tag
# @private
    #declare tag SpreadMarker

# 拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
# 実行前に拡散値がされていない場合、デフォルト値を入れる
    execute unless data storage lib: Argument.Bounds run data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,2d],[8d,8d]]

# 実行
    execute at @p[gamemode=!spectator,distance=..100] as @e[type=marker,tag=SpreadMarker,distance=..80,sort=nearest,limit=1] run function lib:spread_entity/

# 自分をマーカーに向けて再帰TP
    function asset:mob/0301.karmic/tick/common/spread_tp/loop_tp

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]
