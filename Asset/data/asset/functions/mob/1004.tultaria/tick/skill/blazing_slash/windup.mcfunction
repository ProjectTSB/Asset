#> asset:mob/1004.tultaria/tick/skill/blazing_slash/windup
#
# 構える
#
# @within function asset:mob/1004.tultaria/tick/skill/blazing_slash/tick
#
## 右か左をランダムで選択
#    # 疑似乱数取得
#        execute store result score $Random Temporary run function lib:random/
#        scoreboard players operation $Random Temporary %= $2 Const
#    # 結果によって方向を選ぶ
#        execute if score $Random Temporary matches 0 facing entity @p feet run tp @s ~ ~ ~ ~90 ~
#        execute if score $Random Temporary matches 1 facing entity @p feet run tp @s ~ ~ ~ ~-90 ~
#    # リセット
#        scoreboard players reset $Random Temporary

# こっちを向く
    execute facing entity @p feet run tp @s ~ ~ ~ ~ 0


# 構える


# 演出
    playsound ogg:block.respawn_anchor.charge1 hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 2 1.2
