#> asset:artifact/1598.banisher/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1598.banisher/trigger/2.check_condition

#> SpreadLib
# @private
    #declare tag SpreadMarker

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 0.8
    data modify storage lib: Argument.Spread set value 0.1
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# 発射
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..1,limit=1] feet anchored eyes positioned ^ ^ ^ run function asset:artifact/1598.banisher/trigger/rec

# 消費時の処理
    function asset:artifact/1598.banisher/trigger/reload

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..1,limit=1]
    data remove storage lib: Argument
