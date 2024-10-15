#> asset:mob/0059.jack_o_lantern/tick/skill/missile/3.shoot
#
# カボチャミサイルの発射処理1
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/missile/1.main

# 撃つ
    execute positioned ~ ~2 ~ rotated ~ -90 summon marker run function asset:mob/0059.jack_o_lantern/tick/skill/missile/4.shoot2
