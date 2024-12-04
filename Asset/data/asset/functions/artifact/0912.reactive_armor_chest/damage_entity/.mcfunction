#> asset:artifact/0912.reactive_armor_chest/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/912/damage_entity/

# 爆発で周囲にダメージを与える
    function asset:artifact/0912.reactive_armor_chest/damage_entity/3.1.explosion

# アーマータフネスと耐久値を減らす
    item modify entity @s armor.chest asset:artifact/0912.reactive_armor_chest/decrease_toughness