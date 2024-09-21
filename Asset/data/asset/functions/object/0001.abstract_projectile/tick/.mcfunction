#> asset:object/0001.abstract_projectile/tick/
#
# Objectのtick時の処理
#
# @within function
#   asset:object/alias/1/tick
#   asset:object/0001.abstract_projectile/tick/

# Tick加算
#   scoreboard players add @s General.Object.Tick 1

# 消滅処理
#   kill @s[scores={General.Object.Tick=1000..}]

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={1.Recursion=1..,1.Range=1..}] run scoreboard players operation @s 1.Recursion = @s 1.Speed

# 前進
    execute if entity @s[scores={1.Recursion=1..,1.Range=1..}] run tp @s ^ ^ ^0.5 ~ ~

# スコア減算
    scoreboard players remove @s 1.Recursion 1
    scoreboard players remove @s 1.Range 1

# エンティティへの衝突判定
    function asset:object/call.m {method:detect_hit_entity}

# ブロックへの衝突判定
    function asset:object/call.m {method:detect_hit_block}

# キル
    execute if entity @s[scores={1.Range=0}] run function asset:object/call.m {method:kill}

# 再帰
    execute if entity @s[scores={1.Recursion=1..,1.Range=1..}] at @s run function asset:object/0001.abstract_projectile/tick/

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
