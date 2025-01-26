#> asset:artifact/1034.eiya/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1034.eiya/trigger/2.check_condition

# 現在MPの10×1.2倍を取得
    function api:mp/get_current
    execute store result score $MP Temporary run data get storage api: Return.CurrentMP 12

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 待機時間を設定 0以下になるとschedule.mcfでリセットされる
    scoreboard players set @s SQ.WaitingTime 60

# スケジュールを起動
    schedule function asset:artifact/1034.eiya/trigger/schedule 1t replace

# 1~9段目までの段階のスコア
    scoreboard players add @s SQ.Count 1

# playsound
    execute if entity @s[scores={SQ.Count=..8}] run playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={SQ.Count=..8}] run playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1.2
    execute if entity @s[scores={SQ.Count=..8}] run playsound minecraft:item.trident.return player @a ~ ~ ~ 1 1.2

# 1段目
    execute if entity @s[scores={SQ.Count=1}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash1

# 2段目
    execute if entity @s[scores={SQ.Count=2}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash2

# 3段目
    execute if entity @s[scores={SQ.Count=3}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash3

# 4段目
    execute if entity @s[scores={SQ.Count=4}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash4

# 5段目
    execute if entity @s[scores={SQ.Count=5}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash5

# 6段目
    execute if entity @s[scores={SQ.Count=6}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash6

# 7段目
    execute if entity @s[scores={SQ.Count=7}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash7

# 8段目
    execute if entity @s[scores={SQ.Count=8}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash8

# 9段目
    execute if entity @s[scores={SQ.Count=9}] anchored eyes positioned ^ ^ ^0.5 run function asset:artifact/1034.eiya/trigger/vfx/slash9.1
    execute if entity @s[scores={SQ.Count=9}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash9.1
    execute if entity @s[scores={SQ.Count=9}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/trigger/vfx/slash9.2

# ダメージ
    execute if entity @s[scores={SQ.Count=..8}] run function asset:artifact/1034.eiya/trigger/4.damage
    execute if entity @s[scores={SQ.Count=9}] run function asset:artifact/1034.eiya/trigger/5.damage2

# Countのリセット
    execute if entity @s[scores={SQ.Count=9..}] run scoreboard players reset @s SQ.Count
