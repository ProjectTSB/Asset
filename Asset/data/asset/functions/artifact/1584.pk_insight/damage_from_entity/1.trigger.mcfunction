#> asset:artifact/1584.pk_insight/damage_from_entity/1.trigger
#
#
#
# @within tag/function asset:artifact/damage/from_entity/

# storage asset:idのoffhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{offhand:1584} run function asset:artifact/1584.pk_insight/damage_from_entity/2.check_condition
