#> asset:artifact/0646.thorn_helm/damage_entity/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/damage/from_entity/

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:646} run function asset:artifact/0646.thorn_helm/damage_entity/2.check_condition
