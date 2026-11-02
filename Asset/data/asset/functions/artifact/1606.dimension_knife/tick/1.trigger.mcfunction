#> asset:artifact/1606.dimension_knife/tick/1.trigger
#
#
#
# @within function asset_manager:artifact/triggers/dispatch/call.m

# storage asset:idのhotbarに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[1606]} run function asset:artifact/1606.dimension_knife/tick/2.check_condition
