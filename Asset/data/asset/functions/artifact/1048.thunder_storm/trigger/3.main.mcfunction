#> asset:artifact/1048.thunder_storm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1048.thunder_storm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# マーカーを持ってくる
    execute anchored eyes run tp 0-0-0-0-0 ^ ^ ^ ~ ~
    scoreboard players set $T4.Temp Temporary 64
    execute as 0-0-0-0-0 at @s positioned ^ ^ ^0.25 if block ^ ^ ^ #lib:no_collision run function asset:artifact/1048.thunder_storm/trigger/3.1.main_loop

# Marker召喚
    execute as 0-0-0-0-0 at @s run summon marker ^ ^ ^ {Tags:["T4.Marker"]}

# スケジュール設定
    schedule function asset:artifact/1048.thunder_storm/trigger/4.schedule 1t


# リセット
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
    scoreboard players reset $T4.Temp Temporary
