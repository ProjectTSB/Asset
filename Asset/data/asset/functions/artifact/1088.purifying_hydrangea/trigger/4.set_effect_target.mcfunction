#> asset:artifact/1088.purifying_hydrangea/trigger/4.set_effect_target
#
# バフを付与する対象を設定する
#
# @within function asset:artifact/1088.purifying_hydrangea/trigger/3.main

#> Private
# @private
    #declare tag BuffTarget

# 自身にバフ対象のTagを付与する
    tag @s add BuffTarget

# 周囲の水攻撃補正が最も高いプレイヤーにTagを付与する
    execute unless entity @p[tag=!BuffTarget,distance=..20] run function asset:artifact/1088.purifying_hydrangea/trigger/5.find_highest_water_attack_player

# バフを付与する
    execute as @a[tag=BuffTarget] at @s run function asset:artifact/1088.purifying_hydrangea/trigger/7.give_effect

# Tag削除
    tag @a[tag=BuffTarget] remove BuffTarget
