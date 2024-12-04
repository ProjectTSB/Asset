#> asset:artifact/0600.xtal/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/600/attack_melee/

# スコア付与する
    scoreboard players add @s GO.Time 3
# スケジュール開始
    schedule function asset:artifact/0600.xtal/attack_melee/schedule 1t replace
