#> asset:artifact/0224.onegai_muscle/using_item/1.trigger
#
#
#
# @within tag/function asset:artifact/using_item/

# storage asset:context idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:224} run function asset:artifact/0224.onegai_muscle/using_item/2.check_condition
