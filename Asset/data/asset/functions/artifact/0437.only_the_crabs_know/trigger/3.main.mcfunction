#> asset:artifact/0437.only_the_crabs_know/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0437.only_the_crabs_know/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 20%ずつの確率で各効果を得る
    execute store result score $Random Temporary run random value 0..4

# 賞賛
    execute if score $Random Temporary matches 0 run function asset:artifact/0437.only_the_crabs_know/trigger/taste/excellent_soup
# 絶賛
    execute if score $Random Temporary matches 1 run function asset:artifact/0437.only_the_crabs_know/trigger/taste/great_stock
# 酷評
    execute if score $Random Temporary matches 2 run function asset:artifact/0437.only_the_crabs_know/trigger/taste/awful_taste
# 幻滅
    execute if score $Random Temporary matches 3 run function asset:artifact/0437.only_the_crabs_know/trigger/taste/sanity_decrease
# 天国
    execute if score $Random Temporary matches 4 run function asset:artifact/0437.only_the_crabs_know/trigger/taste/heavenly_feeling

# リセット
    scoreboard players reset $Random Temporary
