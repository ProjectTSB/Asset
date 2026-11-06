#> asset:artifact/1615.ema_of_abundance/damage_from_entity/2.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1615.ema_of_abundance/damage_from_entity/1.trigger

#敵からの被弾時確率で空腹付与
    execute if predicate lib:random_pass_per/20 run function asset:artifact/1615.ema_of_abundance/damage_from_entity/effect
