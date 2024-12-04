#> asset:artifact/0437.only_the_crabs_know/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/437/use_item/


# 20%ずつの確率
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $100 Const
    # 各効果
        # 賞賛
            execute if score $Random Temporary matches 0..19 run function asset:artifact/0437.only_the_crabs_know/use_item/3.1.excellent_soup
        # 絶賛
            execute if score $Random Temporary matches 20..39 run function asset:artifact/0437.only_the_crabs_know/use_item/3.2.great_stock
        # 酷評
            execute if score $Random Temporary matches 40..59 run function asset:artifact/0437.only_the_crabs_know/use_item/3.3.awful_taste
        # 幻滅
            execute if score $Random Temporary matches 60..79 run function asset:artifact/0437.only_the_crabs_know/use_item/3.4.sanity_decrease
        # 天国
            execute if score $Random Temporary matches 80..99 run function asset:artifact/0437.only_the_crabs_know/use_item/3.5.heavenly_feeling
    # リセット
        scoreboard players reset $Random Temporary