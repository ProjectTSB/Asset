#> asset:effect/0393.launching_rice/tick/shoot
#
#
#
# @within function asset:effect/0393.launching_rice/tick/

#> SpreadLib
# @private
    #declare tag SpreadMarker

# 前方拡散事前準備
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 10.0
    data modify storage lib: Argument.Spread set value 4.63
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 発射
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^ ^ ^ run function asset:effect/0393.launching_rice/tick/rec

# 演出
    playsound entity.chicken.egg player @a ~ ~ ~ 0.5 1.75
    playsound ogg:block.vault.eject1 player @a ~ ~ ~ 0.5 2.0

# リセット
    tag @s remove 0393.Hit
    kill @e[type=marker,tag=SpreadMarker]
