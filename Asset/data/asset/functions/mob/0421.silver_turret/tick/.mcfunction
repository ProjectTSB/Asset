#> asset:mob/0421.silver_turret/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/421/tick

# タレットの位置調整
    execute at @s on passengers run tp @s ^ ^ ^ ~ 0

# シミが一定以上ならreturn
    execute if score @s BP.SummonCount matches 20.. run return fail

# スコア上昇
    scoreboard players add @s General.Mob.Tick 1

# プレイヤーが近くにいる場合シミシミバレット発射！
    execute if score @s General.Mob.Tick matches 150.. if entity @a[tag=!PlayerShouldInvulnerable,distance=..16] run function asset:mob/0421.silver_turret/tick/fire
