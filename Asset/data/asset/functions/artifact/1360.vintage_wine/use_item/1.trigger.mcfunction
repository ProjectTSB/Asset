#> asset:artifact/1360.vintage_wine/use_item/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# オフハンドで食べたときだけ、その手の神器のIDを比較して~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context Items{AutoSlot:"offhand"} if data storage asset:context id{auto:1360} run function asset:artifact/1360.vintage_wine/use_item/2.check_condition
