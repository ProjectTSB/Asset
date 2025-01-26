#> asset:mob/0417.astro_skeleton/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/417/tick

# スコアを増やす
    scoreboard players add @s General.Mob.Tick 1

# 100Tick,200Tick時にジャンプ
    execute if score @s General.Mob.Tick matches 99 run tp @s ~ ~ ~ facing entity @p[tag=!PlayerShouldInvulnerable,distance=..16,sort=nearest]
    execute if score @s General.Mob.Tick matches 100 run function asset:mob/0417.astro_skeleton/tick/jump
    execute if score @s General.Mob.Tick matches 199 run tp @s ~ ~ ~ facing entity @p[tag=!PlayerShouldInvulnerable,distance=..16,sort=nearest]
    execute if score @s General.Mob.Tick matches 200 run function asset:mob/0417.astro_skeleton/tick/jump

# 300Tick時にテレポート
    execute if score @s General.Mob.Tick matches 300.. run function asset:mob/0417.astro_skeleton/tick/teleport
