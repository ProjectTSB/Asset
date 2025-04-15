#> asset:object/1107.crystal_dart/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1107/hit_entity

# ダメージ
    execute unless entity @s[tag=1107.CannotHit] run function asset:object/1107.crystal_dart/hit_entity/damage
