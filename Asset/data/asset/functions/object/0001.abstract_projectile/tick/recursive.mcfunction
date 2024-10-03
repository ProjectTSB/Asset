#> asset:object/0001.abstract_projectile/tick/recursive
#
# 再帰処理
#
# @within function
#   asset:object/0001.abstract_projectile/tick/
#   asset:object/0001.abstract_projectile/tick/recursive

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={1.Recursion=1..}] run scoreboard players operation @s 1.Recursion = @s 1.Speed

# 前進
    execute if entity @s[scores={1.Recursion=1..,1.Range=1..}] run function asset:object/0001.abstract_projectile/tick/move.m with storage asset:context this

# スコア減算
    scoreboard players remove @s 1.Recursion 1
    scoreboard players remove @s 1.Range 1

# エンティティへの衝突
    # 判定
        function asset:object/call.m {method:detect_hit_entity}
    # メソッド実行
        execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:hit_entity}
        data remove storage asset:context IsHitEntity

# ブロックへの衝突
    # 判定
        function asset:object/call.m {method:detect_hit_block}
    # メソッド実行
        execute if data storage asset:context {IsHitBlock:true} run function asset:object/call.m {method:hit_block}
        data remove storage asset:context IsHitBlock

# パーティクルなど、この再帰内で一緒に実行してほしいメソッド
    function asset:object/call.m {method:recursive}

# 距離を使い果たした場合
    execute if entity @s[scores={1.Range=0}] run function asset:object/call.m {method:kill}

# 再帰
    execute if entity @s[scores={1.Recursion=1..,1.Range=1..}] at @s run function asset:object/0001.abstract_projectile/tick/recursive

# 実装フラグを立てる
    data modify storage asset:object Implement set value true

say recursive
