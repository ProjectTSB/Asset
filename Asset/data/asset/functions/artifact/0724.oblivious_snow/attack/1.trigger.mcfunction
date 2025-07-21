#> asset:artifact/0724.oblivious_snow/attack/1.trigger
#
# 攻撃処理を行う際に使用可能かをチェック
#
# @within tag/function asset:artifact/attack

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:724} run function asset:artifact/0724.oblivious_snow/attack/2.check_condition
