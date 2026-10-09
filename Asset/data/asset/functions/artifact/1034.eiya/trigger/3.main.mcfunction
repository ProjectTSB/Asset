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

# 次の段までの猶予
    execute store result score $WaitingTime Temporary run time query gametime
    scoreboard players operation $WaitingTime Temporary -= $LatestUseTick Temporary
    execute if score $WaitingTime Temporary matches 60.. run scoreboard players reset @s SQ.Count
    scoreboard players reset $WaitingTime Temporary

# 1~9段目までの段階のスコア
    scoreboard players add @s SQ.Count 1

# 斬撃演出
    function asset:artifact/1034.eiya/trigger/vfx/

# ダメージ
    execute if entity @s[scores={SQ.Count=..8}] run function asset:artifact/1034.eiya/trigger/damage/1-8
    execute if entity @s[scores={SQ.Count=9}] run function asset:artifact/1034.eiya/trigger/damage/9

# Countのリセット
    execute if entity @s[scores={SQ.Count=9..}] run scoreboard players reset @s SQ.Count
