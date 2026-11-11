#> asset:artifact/1360.vintage_wine/use_item/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# 使用した神器のIDを確認する
    execute if data storage asset:context id{auto:1360} run function asset:artifact/1360.vintage_wine/use_item/2.check_condition
