#> asset:mob/0217.medousa_eye/tick/fix_direction
#
# ビームの向きを決定します
#
# @within function asset:mob/0217.medousa_eye/tick/

# ターゲット設定
    execute positioned ^ ^ ^10 as @a[gamemode=!spectator,distance=..10] run function asset:mob/0217.medousa_eye/tick/find_target

# NoAI
    execute if entity @p[tag=Target] run data modify entity @s NoAI set value 1b
# プレイヤーを見る
    execute if entity @p[tag=Target] anchored eyes facing entity @p[tag=Target] eyes anchored feet positioned ^ ^ ^ run tp @s ~ ~ ~ ~ ~

# Targetがいない場合、リセット
    execute unless entity @p[tag=Target] run function asset:mob/0217.medousa_eye/tick/reset

# Targetを削除
    tag @p[tag=Target] remove Target
