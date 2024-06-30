#> asset:mob/0217.medousa_eye/tick/3.fix_direction
#
# ビームの向きを決定します
#
# @within function asset:mob/0217.medousa_eye/tick/2.tick

# ターゲット設定
    execute positioned ^ ^ ^10 as @a[distance=..10] run function asset:mob/0217.medousa_eye/tick/4.find_target

# NoAI
    execute if entity @p[tag=Target] run data modify entity @s NoAI set value 1b
# プレイヤーを見る
    execute if entity @p[tag=Target] facing entity @p[tag=Target] eyes run tp @s ~ ~ ~ ~ ~

# Targetがいない場合、リセット
    execute unless entity @p[tag=Target] run function asset:mob/0217.medousa_eye/tick/8.reset

# Targetを削除
    tag @p[tag=Target] remove Target
