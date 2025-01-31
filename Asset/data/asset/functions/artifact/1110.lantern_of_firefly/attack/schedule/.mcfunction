#> asset:artifact/1110.lantern_of_firefly/attack/schedule/
#
# スケジュールループのメイン処理
#
# @within function asset:artifact/1110.lantern_of_firefly/attack/schedule/loop

# スコア加算
    scoreboard players add @s UU.Tick 1

# 演出
    execute if entity @s[scores={UU.Tick=10}] run function asset:artifact/1110.lantern_of_firefly/attack/schedule/vfx1
    execute if entity @s[scores={UU.Tick=21}] run function asset:artifact/1110.lantern_of_firefly/attack/schedule/vfx2

# ループ
    schedule function asset:artifact/1110.lantern_of_firefly/attack/schedule/loop 1t replace

# リセット
    execute if entity @s[scores={UU.Tick=21..}] run scoreboard players reset @s UU.Tick
