#> asset:artifact/1034.eiya/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1034/attack_melee/

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 待機時間を設定 0以下になるとschedule.mcfでリセットされる
    scoreboard players set @s SQ.WaitingTime 60

# スケジュールを起動
    schedule function asset:artifact/1034.eiya/attack_melee/schedule 1t replace

# 1~9段目までの段階のスコア
    scoreboard players add @s SQ.Count 1

# playsound
    execute if entity @s[scores={SQ.Count=..8}] run playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={SQ.Count=..8}] run playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 1.2
    execute if entity @s[scores={SQ.Count=..8}] run playsound minecraft:item.trident.return player @a ~ ~ ~ 1 1.2

# 1段目
    execute if entity @s[scores={SQ.Count=1}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/attack_melee/vfx/slash1

# 2段目
    execute if entity @s[scores={SQ.Count=2}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/attack_melee/vfx/slash2

# 3段目
    execute if entity @s[scores={SQ.Count=3}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/attack_melee/vfx/slash3

# 4段目
    execute if entity @s[scores={SQ.Count=4}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/attack_melee/vfx/slash4

# 5段目
    execute if entity @s[scores={SQ.Count=5}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/attack_melee/vfx/slash5

# 6段目
    execute if entity @s[scores={SQ.Count=6}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/attack_melee/vfx/slash6

# 7段目
    execute if entity @s[scores={SQ.Count=7}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/attack_melee/vfx/slash7

# 8段目
    execute if entity @s[scores={SQ.Count=8}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/attack_melee/vfx/slash8

# 9段目
    execute if entity @s[scores={SQ.Count=9}] anchored eyes positioned ^ ^ ^0.5 run function asset:artifact/1034.eiya/attack_melee/vfx/slash9.1
    execute if entity @s[scores={SQ.Count=9}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/attack_melee/vfx/slash9.1
    execute if entity @s[scores={SQ.Count=9}] anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/1034.eiya/attack_melee/vfx/slash9.2

# ダメージ
    execute if entity @s[scores={SQ.Count=..8}] run function asset:artifact/1034.eiya/attack_melee/4.damage
    execute if entity @s[scores={SQ.Count=9}] run function asset:artifact/1034.eiya/attack_melee/5.damage2

# Countのリセット
    execute if entity @s[scores={SQ.Count=9..}] run scoreboard players reset @s SQ.Count
