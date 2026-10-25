#> asset:mob/0421.silver_turret/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/421/tick

# タレットの位置調整
    execute at @s on passengers run tp @s ^ ^ ^ ~ 0

# スコア上昇
    scoreboard players add @s General.Mob.Tick 1

# プレイヤーが近くかつシミシミバレットが一定数以下なら、シミシミバレット発射！
    execute if score @s General.Mob.Tick matches 0.. if entity @a[tag=!PlayerShouldInvulnerable,distance=..16] if function asset:mob/0421.silver_turret/tick/check_count run function asset:mob/0421.silver_turret/tick/fire

# リセット
    execute if score @s General.Mob.Tick matches 0.. run function asset:mob/0421.silver_turret/tick/reset
