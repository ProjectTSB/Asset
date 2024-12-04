#> asset:artifact/0005.musket_matchlock/click/entity/
#
# エンダーパールがヒットしたかどうかを確認
#
# @within function
#   asset:artifact/0005.musket_matchlock/click/
#   asset:artifact/0005.musket_matchlock/click/entity/

# アーマースタンドがエンダーパールの上に乗っていない状態なら命中処理
    execute as @e[type=marker,tag=5.MatchlockIndicator] unless predicate lib:is_vehicle at @s run function asset:artifact/0005.musket_matchlock/click/entity/damage

# アーマースタンドがエンダーパールの上に乗っている状態なら飛翔処理
    execute as @e[type=marker,tag=5.MatchlockIndicator] if predicate lib:is_vehicle at @s run function asset:artifact/0005.musket_matchlock/click/entity/flying

# 次tickのmanager実行予約
    execute if entity @e[type=marker,tag=5.MatchlockIndicator,predicate=lib:is_vehicle,limit=1] run schedule function asset:artifact/0005.musket_matchlock/click/entity/ 1t replace
