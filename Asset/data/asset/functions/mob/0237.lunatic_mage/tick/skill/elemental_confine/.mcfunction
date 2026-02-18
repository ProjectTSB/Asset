#> asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/
#
# メイン処理部
#
# @within function asset:mob/0237.lunatic_mage/tick/skill_branch

# 開始のもろもろ
    execute if entity @s[scores={General.Mob.Tick=1}] run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/start

# 頭装備再装備
    execute if entity @s[scores={General.Mob.Tick=4}] run item replace entity @s armor.head with stick{CustomModelData:20199}

# 大技にはかっこいい詠唱が付き物です
    execute if entity @s[scores={General.Mob.Tick=2}] run summon area_effect_cloud ~ ~2 ~ {CustomNameVisible:1b,Radius:0f,Duration:20,CustomName:'{"text":"Get over here","font":"illageralt","color":"light_purple"}'}
    execute if entity @s[scores={General.Mob.Tick=20}] run summon area_effect_cloud ~ ~2 ~ {CustomNameVisible:1b,Radius:0f,Duration:40,CustomName:'{"text":"Farewell","font":"illageralt","color":"light_purple"}'}

# ポーズ変更
    execute if entity @s[scores={General.Mob.Tick=20}] run item replace entity @s armor.head with stick{CustomModelData:20200}

# 予備動作的な
    execute if entity @s[scores={General.Mob.Tick=22}] at @a[gamemode=!spectator,distance=..20] run playsound minecraft:block.portal.travel hostile @a ~ ~ ~ 0.2 2 0
    execute if entity @s[scores={General.Mob.Tick=..40}] run particle dust 1 1 1 1.5 ~ ~1 ~ 0.4 0.5 0.4 0.3 3 force @a[distance=..20]

# 召喚された地点にランダムなプレイヤー一人と、水の檻範囲内にいたプレイヤーと共にワープ
    execute if entity @s[scores={General.Mob.Tick=20}] positioned as @s rotated ~ 0 run tp @r[gamemode=!spectator,distance=..30] ^ ^-2 ^2
    execute if entity @s[scores={General.Mob.Tick=20}] positioned as @s rotated ~ 0 run tp @a[gamemode=!spectator,distance=..9] ^ ^-2 ^2
    execute if entity @s[scores={General.Mob.Tick=20}] as @a[gamemode=!spectator,distance=..9] at @s run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/player_pull

# アクティブ中に実行するコマンド
    execute if entity @s[scores={General.Mob.Tick=10..450}] run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/in_activation

# 火の予告
    execute if entity @s[scores={General.Mob.Tick=80..94}] positioned ~ ~-1.5 ~ run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/fire/line

# 火を使い始める
    execute if entity @s[scores={General.Mob.Tick=95..191}] run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/fire/1

# 雷を落とす
    execute if entity @s[scores={General.Mob.Tick=205..480}] positioned ~ ~-2 ~ run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/thunder/

# 再度火の予告
    execute if entity @s[scores={General.Mob.Tick=260..275}] positioned ~ ~-1.5 ~ run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/fire/line

# 再度火を使い始める
    execute if entity @s[scores={General.Mob.Tick=275..480}] run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/fire/2

# リセット
    execute if entity @s[scores={General.Mob.Tick=550..}] run function asset:mob/0237.lunatic_mage/tick/skill/reset
