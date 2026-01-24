#> asset:mob/0038.laser_eye/tick/charge
#
# 適正距離の処理
#
# @within function asset:mob/0038.laser_eye/tick/

# スコアを増やしていく
    scoreboard players add @s General.Mob.Tick 1

# プレイヤーを見る
    execute if entity @s[scores={General.Mob.Tick=..25}] anchored eyes facing entity @p[tag=!PlayerShouldInvulnerable,distance=..9] eyes anchored feet run tp @s ~ ~ ~ ~ ~

# 一定スコアに達した場合視点固定タグ付与
    execute if entity @s[scores={General.Mob.Tick=15}] run tag @s add C.Charge

# 演出
    execute if entity @s[scores={General.Mob.Tick=15}] run playsound minecraft:block.beacon.ambient hostile @a ~ ~ ~ 2 2
    execute if entity @s[scores={General.Mob.Tick=15}] run playsound minecraft:block.beacon.ambient hostile @a ~ ~ ~ 2 2
    execute if entity @s[scores={General.Mob.Tick=15..}] anchored eyes positioned ^ ^ ^1 rotated ~ ~90 run function asset:mob/0038.laser_eye/tick/vfx/1
    execute if entity @s[scores={General.Mob.Tick=15..}] anchored eyes positioned ^ ^ ^1.4 rotated ~ ~90 run function asset:mob/0038.laser_eye/tick/vfx/2

# 攻撃
    execute if entity @s[scores={General.Mob.Tick=35}] run function asset:mob/0038.laser_eye/tick/shoot/
