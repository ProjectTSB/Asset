#> asset:artifact/0292.craving_sword/kill/1.trigger
#
#
#
# @within tag/function asset:artifact/killed

# storage asset:idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:292} run function asset:artifact/0292.craving_sword/kill/2.check_condition
