#> asset:object/0001.abstract_projectile/detect_hit_entity/
#
# 指定した条件を満たすとヒット時の処理を実行する
#
# @within asset:object/alias/1/detect_hit_entity

# 判定を作成
    execute positioned ~-0.5 ~0.0 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:object/call.m {method:hit_entity}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
