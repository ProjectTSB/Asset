#> asset:mob/0059.jack_o_lantern/tick/skill/shoot/3.shoot
#
# カボチャミサイルの発射処理1
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/shoot/1.main

# 撃つ
    execute positioned ~ ~2 ~ rotated ~ -90 run function asset:mob/0059.jack_o_lantern/tick/skill/shoot/4.shoot2
