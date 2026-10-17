#> asset:artifact/1474.ninja_kunai/attack/1.trigger
#
#
#
# @within tag/function asset:artifact/attack

# storage asset:idのhotbarに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[1474]} run function asset:artifact/1474.ninja_kunai/attack/2.check_condition
