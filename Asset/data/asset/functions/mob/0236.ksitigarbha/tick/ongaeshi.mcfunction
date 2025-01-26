#> asset:mob/0236.ksitigarbha/tick/ongaeshi
#
# 
#
# @within function asset:mob/0236.ksitigarbha/tick/

# 雪を払ったプレイヤーと周囲のプレイヤーにバフをかける
    execute at @s run effect give @a[distance=..5] regeneration 5 1
    execute at @s run tellraw @a[distance=..5] [{"translate": "お地蔵さんは雪を払ってもらった恩返しをした","color": "yellow"}]

# 音
    playsound ogg:random.levelup hostile @a[distance=..5] ~ ~ ~ 2 1.5 1

# 恩返しを実行したフラグをつける
    scoreboard players set $6K.OngaeshiFlag Temporary 1
