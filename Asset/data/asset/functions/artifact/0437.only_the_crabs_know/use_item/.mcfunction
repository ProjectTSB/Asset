#> asset:artifact/0437.only_the_crabs_know/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/437/use_item/


# 20%ずつの確率で各効果を得る
    execute store result score $Random Temporary run random value 0..4

# debug
    # scoreboard players set $Random Temporary 3

# 賞賛
    execute if score $Random Temporary matches 0 run function asset:artifact/0437.only_the_crabs_know/use_item/taste/excellent_soup
# 絶賛
    execute if score $Random Temporary matches 1 run function asset:artifact/0437.only_the_crabs_know/use_item/taste/great_stock
# 酷評
    execute if score $Random Temporary matches 2 run function asset:artifact/0437.only_the_crabs_know/use_item/taste/awful_taste
# 幻滅
    execute if score $Random Temporary matches 3 run function asset:artifact/0437.only_the_crabs_know/use_item/taste/sanity_decrease
# 天国
    execute if score $Random Temporary matches 4 run function asset:artifact/0437.only_the_crabs_know/use_item/taste/heavenly_feeling

# リセット
    scoreboard players reset $Random Temporary
