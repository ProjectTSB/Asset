#> asset:mob/0027.skull_sniper/tick/attack/
#
# 攻撃処理
#
# @within asset:mob/0027.skull_sniper/tick/

# タグ付与を試みる
    execute store result score $R.Temp Temporary run data get storage asset:context this.Target.ID
    execute as @a[distance=..55] if score @s UserID = $R.Temp Temporary run tag @s add R.Target
    scoreboard players reset $R.Temp
# ターゲットがいなければリセット
    execute unless entity @a[tag=R.Target,tag=!PlayerShouldInvulnerable,distance=..55,limit=1] run return run function asset:mob/0027.skull_sniper/tick/reset
# ターゲットがいればその方向を向く
    execute facing entity @a[tag=R.Target,tag=!PlayerShouldInvulnerable,distance=..55,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# 処理
    execute if score @s General.Mob.Tick matches 0..89 as @a[tag=R.Target,tag=!PlayerShouldInvulnerable,distance=..55,limit=1] run function asset:mob/0027.skull_sniper/tick/attack/warn
    execute if score @s General.Mob.Tick matches 90 facing entity @a[tag=R.Target,tag=!PlayerShouldInvulnerable,distance=..55,limit=1] eyes positioned ^ ^ ^ run function asset:mob/0027.skull_sniper/tick/attack/shot/
    execute if score @s General.Mob.Tick matches 110 run function asset:mob/0027.skull_sniper/tick/reset

# リセット
    tag @a[distance=..55] remove R.Target
