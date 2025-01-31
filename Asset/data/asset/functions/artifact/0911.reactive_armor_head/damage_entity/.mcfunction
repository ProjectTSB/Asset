#> asset:artifact/0911.reactive_armor_head/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/911/damage_entity/

# 爆発で周囲にダメージを与える
    function asset:artifact/0911.reactive_armor_head/damage_entity/3.1.explosion

# アーマータフネスと耐久値を減らす
    item modify entity @s armor.head asset:artifact/0911.reactive_armor_head/decrease_toughness