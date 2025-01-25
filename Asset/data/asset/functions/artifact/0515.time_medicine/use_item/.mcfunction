#> asset:artifact/0515.time_medicine/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/515/use_item/

# 朝
    execute if predicate lib:is_day run function asset:artifact/0515.time_medicine/use_item/day
# 夜
    execute if predicate lib:is_night run function asset:artifact/0515.time_medicine/use_item/night
