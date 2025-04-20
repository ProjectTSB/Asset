#> asset:artifact/1038.flame_devil_head/damage_entity/1.trigger
#
# 被ダメ時にTagがついているかチェック
#
# @within tag/function asset:artifact/damage/from_entity/

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:1038} run function asset:artifact/1038.flame_devil_head/damage_entity/2.check_condition
