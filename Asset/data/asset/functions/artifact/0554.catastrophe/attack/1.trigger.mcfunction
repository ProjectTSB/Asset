#> asset:artifact/0554.catastrophe/attack/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/attack

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:554} run function asset:artifact/0554.catastrophe/attack/2.check_condition
