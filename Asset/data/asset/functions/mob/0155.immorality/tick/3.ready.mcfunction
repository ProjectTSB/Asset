#> asset:mob/0155.immorality/tick/3.ready
#
# 発砲準備をします
#
# @within function asset:mob/0155.immorality/tick/2.tick

# NoAIにする
    data modify entity @s NoAI set value 1b

# プレイヤーの方向を向く
    execute anchored eyes facing entity @p eyes anchored feet positioned ^ ^ ^ run tp @s ~ ~ ~ ~ ~