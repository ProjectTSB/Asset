#> asset:artifact/1647.armillary_sphere/tick/1.trigger
#
#
#
# @within tag/function asset:artifact/tick

# storage asset:idの%slot%に装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[1647]} run function asset:artifact/1647.armillary_sphere/tick/2.check_condition
