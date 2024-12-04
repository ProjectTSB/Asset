#> asset:artifact/0237.schrodingers_cat/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/237/click/

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    #ネコか魚か
        execute if predicate lib:random_pass_per/50 run tag @s add CatSpawn

    #ネコが出た場合
        execute as @s[tag=CatSpawn] run summon cat ~ ~ ~
        playsound entity.cat.ambient neutral @s[tag=CatSpawn] ~ ~ ~ 3 1
        particle heart ~ ~ ~ 1 1 1 1 100 normal @s[tag=CatSpawn]

    #ネコが出なかった場合
        execute as @s[tag=!CatSpawn] run summon cod ~ ~ ~
        playsound entity.cod.flop player @s[tag=!CatSpawn] ~ ~ ~ 3 1
        particle falling_water ~ ~ ~ 1 1 1 1 300 normal @s[tag=!CatSpawn]

    #タグ消し
        tag @s remove CatSpawn