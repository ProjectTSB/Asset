#> asset:mob/0106.mini_shulker/tick/attack/
#
# 攻撃処理
#
# @within asset:mob/0106.mini_shulker/tick/

# タグ付与を試みる
    execute store result score $2Y.Temp Temporary run data get storage asset:context this.Target.ID
    execute as @a[distance=..50] if score @s UserID = $2Y.Temp Temporary run tag @s add 2Y.Target
    scoreboard players reset $2Y.Temp
# ターゲットがいなければリセット
    execute unless entity @a[tag=2Y.Target,tag=!PlayerShouldInvulnerable,distance=..50,limit=1] run return run function asset:mob/0106.mini_shulker/tick/reset

# 処理
    execute if score @s General.Mob.Tick matches 500 run function asset:mob/0106.mini_shulker/tick/shell/open
    execute if score @s General.Mob.Tick matches 520 align xyz positioned ~0.5 ~0.5 ~0.5 summon marker run function asset:mob/0106.mini_shulker/tick/attack/shoot
    execute if score @s General.Mob.Tick matches 530 run function asset:mob/0106.mini_shulker/tick/reset

# リセット
    tag @a[distance=..50] remove 2Y.Target
