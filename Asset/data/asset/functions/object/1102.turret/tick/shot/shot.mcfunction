#> asset:object/1102.turret/tick/shot/shot
#
#
#
# @within function asset:object/1102.turret/tick/

#> tag
# @private
    #declare tag SpreadMarker


# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 0.3

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.5,limit=1] run function lib:forward_spreader/circle

# 発砲
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] eyes positioned ^ ^ ^0.4 run function asset:object/1102.turret/tick/shot/bullet_rec

# 演出
    playsound entity.wither.shoot neutral @a ~ ~ ~ 0.3 1.6 0
    playsound entity.firework_rocket.blast neutral @a ~ ~ ~ 0.7 0.5
    playsound entity.shulker.shoot neutral @a ~ ~ ~ 1 1.6
# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10,limit=1]
    tag @s remove Landing

# 発射回数を記録
    scoreboard players add @s 1102.Shot 1
