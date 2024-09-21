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

# パーティクル
    particle firework

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={1.Recursion=1..,1.Range=1..}] run scoreboard players operation @s 1.Recursion = @s 1.Speed

# 前進
    execute if entity @s[scores={1.Recursion=1..,1.Range=1..}] run tp @s ^ ^ ^0.5 ~ ~

# スコア減算
    scoreboard players remove @s 1.Recursion 1
    scoreboard players remove @s 1.Range 1

# エンティティへの衝突判定
#    execute positioned ~-0.1 ~-0.1 ~-0.1 if entity @p[tag=!1.PlayerShouldInvulnerable,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @p[tag=!1.PlayerShouldInvulnerable,dx=0] at @s run function chuzmobs:entity/projectile/recursive_bullet/hit

# 壁の衝突判定
#    execute unless block ~ ~ ~ #chuzmobs:no_collision run function chuzmobs:entity/projectile/check/break

# 再帰
    execute if entity @s[scores={1.Recursion=1..,1.Range=1..}] at @s run function asset:object/0001.abstract_projectile/tick/

# キル
#    execute if entity @s[scores={1.Range=0}] run function chuzmobs:entity/projectile/check/break

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
