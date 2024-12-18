#> asset:mob/0106.mini_shulker/tick/attack/
#
# 攻撃処理
#
# @within asset:mob/0106.mini_shulker/tick/

# タグ付与を試みる
    execute store result score $2Y.Temp Temporary run data get storage asset:context this.TargetID
    execute as @a[distance=..50] if score @s UserID = $2Y.Temp Temporary run tag @s add 2Y.Target
# ターゲットがいなければリセット
    execute unless entity @a[tag=2Y.Target,distance=..50,limit=1] run scoreboard players reset $2Y.Temp Temporary
    execute unless entity @a[tag=2Y.Target,distance=..50,limit=1] run return run function asset:mob/0106.mini_shulker/tick/reset

# 処理
    execute if score @s General.Mob.Tick matches 500 run function asset:mob/0106.mini_shulker/tick/shell/open
    execute if score @s General.Mob.Tick matches 520 run function asset:mob/0106.mini_shulker/tick/attack/shoot
    execute if score @s General.Mob.Tick matches 530 run function asset:mob/0106.mini_shulker/tick/reset

# リセット
    scoreboard players reset $2Y.Temp
    tag @a[distance=..50] remove 2Y.Target
