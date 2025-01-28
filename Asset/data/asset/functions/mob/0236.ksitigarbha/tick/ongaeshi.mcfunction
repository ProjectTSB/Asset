#> asset:mob/0236.ksitigarbha/tick/ongaeshi
#
#
#
# @within function asset:mob/0236.ksitigarbha/tick/

# 雪を払ったプレイヤーと周囲のプレイヤーにバフをかける
    data modify storage api: Argument.ID set value 620
    execute at @s as @a[distance=..5] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
    
    execute at @s run tellraw @a[distance=..5] [{"translate": "お地蔵さんは雪を払ってもらった恩返しをした","color": "yellow"}]

# 音
    playsound ogg:random.levelup hostile @a[distance=..5] ~ ~ ~ 2 1.5 1

# 恩返しを実行したフラグをつける
    scoreboard players set $6K.OngaeshiFlag Temporary 1
