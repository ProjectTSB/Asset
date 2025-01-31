#> asset:artifact/0913.reactive_armor_legs/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/913/damage_entity/

# 爆発で周囲にダメージを与える
    function asset:artifact/0913.reactive_armor_legs/damage_entity/3.1.explosion

# アーマータフネスと耐久値を減らす
    item modify entity @s armor.legs asset:artifact/0913.reactive_armor_legs/decrease_toughness