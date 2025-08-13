#> asset:mob/0187.flame_mage/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/187/tick

# パーティクル
    particle minecraft:falling_dust red_terracotta ~ ~1 ~ 0.1 0 0.1 0 1

# 0以上なら強制的に実行
# 実行順の関係で強制実行を先に配置
    execute if entity @s[scores={General.Mob.Tick=0..}] run scoreboard players add @s General.Mob.Tick 1
    execute unless entity @s[scores={General.Mob.Tick=0..}] positioned ^ ^ ^10 if entity @p[distance=..10] run scoreboard players add @s General.Mob.Tick 1

# 予備動作演出
    execute if entity @s[scores={General.Mob.Tick=1..2}] anchored eyes facing entity @p[gamemode=!spectator,distance=..30] eyes positioned ^-0.25 ^ ^1 run function asset:mob/0187.flame_mage/tick/vfx/1
    execute if entity @s[scores={General.Mob.Tick=4..5}] anchored eyes facing entity @p[gamemode=!spectator,distance=..30] eyes positioned ^-0.25 ^ ^1 run function asset:mob/0187.flame_mage/tick/vfx/2
    execute if entity @s[scores={General.Mob.Tick=7..8}] anchored eyes facing entity @p[gamemode=!spectator,distance=..30] eyes positioned ^-0.25 ^ ^1 run function asset:mob/0187.flame_mage/tick/vfx/3

# 攻撃
    execute if entity @s[scores={General.Mob.Tick=10..}] run function asset:mob/0187.flame_mage/tick/shoot_magic

# リセット
    execute if entity @s[scores={General.Mob.Tick=10..}] run function asset:mob/0187.flame_mage/tick/reset

# 射撃攻撃キャンセル
    execute unless entity @p[distance=..20] unless entity @s[scores={General.Mob.Tick=0..}] run scoreboard players set @s General.Mob.Tick -60
