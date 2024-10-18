#> asset:mob/0155.immorality/tick/5.shot
#
# 拡散して発射方向を決める
#
# @within function asset:mob/0155.immorality/tick/4.shot_interval

#> Private
# @private
    #declare tag SpreadMarker

# 演出
    playsound minecraft:entity.zombie.attack_wooden_door hostile @a[distance=..30] ~ ~ ~ 0.8 0 0.7
    playsound minecraft:block.honey_block.hit hostile @a[distance=..30] ~ ~ ~ 0.8 0 0.7
    playsound minecraft:entity.generic.explode hostile @a[distance=..30] ~ ~ ~ 0.6 2 0.7

# 射撃回数を数えるスコア
    scoreboard players add @s 4B.ShotCount 1

# 前方拡散設定
    summon marker ~ ~0 ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 5
    data modify storage lib: Argument.Spread set value 1

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] run function lib:forward_spreader/circle

# 発砲
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] eyes run function asset:mob/0155.immorality/tick/6.shot_recursive

# ダメージ処理
    execute as @a[tag=LandingTarget,distance=..25] at @s run function asset:mob/0155.immorality/tick/7.damage

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]
    tag @s remove Landing
