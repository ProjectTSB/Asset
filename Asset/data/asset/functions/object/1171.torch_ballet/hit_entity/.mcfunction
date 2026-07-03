#> asset:object/1171.torch_ballet/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1171/hit_entity

# ダメージ
    execute unless entity @s[tag=1171.CannotHit] run function asset:object/1171.torch_ballet/hit_entity/damage
