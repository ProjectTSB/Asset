#> asset:artifact/0914.reactive_armor_feet/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/914/damage_entity/

# 爆発で周囲にダメージを与える
    function asset:artifact/0914.reactive_armor_feet/damage_entity/3.1.explosion

# アーマータフネスと耐久値を減らす
    item modify entity @s armor.feet asset:artifact/0914.reactive_armor_feet/decrease_toughness