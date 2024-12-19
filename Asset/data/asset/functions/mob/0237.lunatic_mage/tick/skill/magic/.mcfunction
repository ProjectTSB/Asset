#> asset:mob/0237.lunatic_mage/tick/skill/magic/
#
# 無属性魔法のメイン処理部
#
# @within function asset:mob/0237.lunatic_mage/tick/skill_branch

#> Private
# @private
    #declare tag 6L.RotationMarker

# ポーズ変更
    execute if entity @s[scores={General.Mob.Tick=2}] run item replace entity @s armor.head with stick{CustomModelData:20199}

# 予備動作的な
    execute if entity @s[scores={General.Mob.Tick=2}] run playsound block.portal.trigger hostile @a[distance=..30] ~ ~ ~ 0.4 2 0.4
    execute if entity @s[scores={General.Mob.Tick=..20}] run particle dust 1 1 1 1.5 ~ ~1 ~ 0.4 0.5 0.4 0.3 2 force @a[distance=..20]
    execute if entity @s[scores={General.Mob.Tick=..20}] positioned ~ ~1.21 ~ positioned ^-0.5 ^ ^1.3 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 1

# NoAIになる
    execute if entity @s[scores={General.Mob.Tick=2}] run data modify entity @s NoAI set value 1b

# 1回目のみ最も最寄りのプレイヤーをターゲットとして予告線を出す
    execute if entity @s[scores={General.Mob.Tick=20..45}] positioned ~ ~1.21 ~ positioned ^-0.5 ^ ^1.3 facing entity @p[gamemode=!spectator,distance=..50] eyes run function asset:mob/0237.lunatic_mage/tick/skill/magic/warning_line

# ターゲットとなったプレイヤーの方向を保存するためにAECを召喚して、せめてxのrotationだけでも対象の方向を見る
    execute if entity @s[scores={General.Mob.Tick=45}] run item replace entity @s armor.head with stick{CustomModelData:20200}
    execute if entity @s[scores={General.Mob.Tick=45}] anchored eyes facing entity @p[gamemode=!spectator,distance=..50] eyes run summon area_effect_cloud ^ ^ ^0.01 {Duration:7,Tags:["Object","Uninterferable","6L.RotationMarker"]}
    execute if entity @s[scores={General.Mob.Tick=45}] anchored eyes facing entity @e[type=area_effect_cloud,tag=6L.RotationMarker,distance=..2,sort=nearest,limit=1] eyes positioned as @s run tp @s ~ ~ ~ ~ 0
# 発射
    execute if entity @s[scores={General.Mob.Tick=51}] run item replace entity @s armor.head with stick{CustomModelData:20199}
    execute if entity @s[scores={General.Mob.Tick=51}] anchored eyes facing entity @e[type=area_effect_cloud,tag=6L.RotationMarker,distance=..2,sort=nearest,limit=1] feet positioned ~ ~1.21 ~ run function asset:mob/0237.lunatic_mage/tick/skill/magic/shoot_beam

# ランダムなプレイヤーを向くようにAECを設置
    execute if entity @s[scores={General.Mob.Tick=71}] run item replace entity @s armor.head with stick{CustomModelData:20200}
    execute if entity @s[scores={General.Mob.Tick=71}] anchored eyes facing entity @r[gamemode=!spectator,distance=..50] eyes run summon area_effect_cloud ^ ^ ^0.01 {Duration:7,Tags:["Object","Uninterferable","6L.RotationMarker"]}
    execute if entity @s[scores={General.Mob.Tick=71}] anchored eyes facing entity @e[type=area_effect_cloud,tag=6L.RotationMarker,distance=..2,sort=nearest,limit=1] eyes positioned as @s run tp @s ~ ~ ~ ~ 0
# 発射
    execute if entity @s[scores={General.Mob.Tick=77}] run item replace entity @s armor.head with stick{CustomModelData:20199}
    execute if entity @s[scores={General.Mob.Tick=77}] anchored eyes facing entity @e[type=area_effect_cloud,tag=6L.RotationMarker,distance=..2,sort=nearest,limit=1] feet positioned ~ ~1.21 ~ run function asset:mob/0237.lunatic_mage/tick/skill/magic/shoot_beam

# ランダムなプレイヤーを向くようにAECを設置
    execute if entity @s[scores={General.Mob.Tick=97}] run item replace entity @s armor.head with stick{CustomModelData:20200}
    execute if entity @s[scores={General.Mob.Tick=97}] anchored eyes facing entity @r[gamemode=!spectator,distance=..50] eyes run summon area_effect_cloud ^ ^ ^0.01 {Duration:7,Tags:["Object","Uninterferable","6L.RotationMarker"]}
    execute if entity @s[scores={General.Mob.Tick=97}] anchored eyes facing entity @e[type=area_effect_cloud,tag=6L.RotationMarker,distance=..2,sort=nearest,limit=1] eyes positioned as @s run tp @s ~ ~ ~ ~ 0
# 発射
    execute if entity @s[scores={General.Mob.Tick=103}] run item replace entity @s armor.head with stick{CustomModelData:20199}
    execute if entity @s[scores={General.Mob.Tick=103}] anchored eyes facing entity @e[type=area_effect_cloud,tag=6L.RotationMarker,distance=..2,sort=nearest,limit=1] feet positioned ~ ~1.21 ~ run function asset:mob/0237.lunatic_mage/tick/skill/magic/shoot_beam

# リセット
    execute if entity @s[scores={General.Mob.Tick=150..}] run function asset:mob/0237.lunatic_mage/tick/skill/reset
