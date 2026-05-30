#> asset:artifact/0027.bow_of_apollo/using_item/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0027.bow_of_apollo/using_item/2.check_condition

# 定数の設定
    function asset:artifact/0027.bow_of_apollo/define_const
# 状況の更新
    function asset:artifact/0027.bow_of_apollo/using_item/init
    execute store result score @s R.LatestChargeTick run data get storage global Time
# チャージ
    function asset:artifact/0027.bow_of_apollo/using_item/charge/
# リセット
    data remove storage asset:temp R
