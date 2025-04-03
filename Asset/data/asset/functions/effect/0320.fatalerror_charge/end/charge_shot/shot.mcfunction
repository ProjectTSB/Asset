#> asset:effect/0320.fatalerror_charge/end/charge_shot/shot
#
#
#
# @within function asset:effect/0320.fatalerror_charge/end/

#> Private
# @private
    #declare tag SpreadMarker

# 演出
    execute at @s anchored eyes positioned ~ ~ ~ run playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 1.2
    playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.7 0.7
    particle block gold_block ^ ^ ^-0.8 0 0 0 1 1
    particle electric_spark ~ ~ ~ 0 0 0 0.2 5

# 弾のブレのための前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 0.8
    data modify storage lib: Argument.Spread set value 0.1

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
# 発砲
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run function asset:effect/0320.fatalerror_charge/end/charge_shot/loop

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
    tag @s[tag=Landing] remove Landing
    tag @e[type=#lib:living,tag=Target,distance=..40] remove Target
