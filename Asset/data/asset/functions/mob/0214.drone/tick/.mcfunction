#> asset:mob/0214.drone/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/214/tick

# 攻撃実行中の同モブが近くにいなければ自分が実行中になる
execute unless entity @e[tag=5Y.IsAttacking,distance=..30] run tag @s add 5Y.IsAttacking

# 自分の状態に応じてモーション打ち分け
execute if entity @s[tag=5Y.IsAttacking] run function asset:mob/0214.drone/tick/attack_motion
execute unless entity @s[tag=5Y.IsAttacking] run function asset:mob/0214.drone/tick/cruise_motion

# 対空砲が近くにいたら自爆
execute if entity @e[scores={ObjectID=2088},distance=..3] run function asset:mob/0214.drone/tick/suicide

# プレイヤーに接触したら自爆
execute unless entity @e[scores={ObjectID=2088},distance=..3] if entity @p[tag=!PlayerShouldInvulnerable,distance=..1] run function asset:mob/0214.drone/tick/suicide

# エンジン音
playsound minecraft:entity.bee.loop hostile @a[distance=..90] ~ ~ ~ 0.2 0.68 0.2
