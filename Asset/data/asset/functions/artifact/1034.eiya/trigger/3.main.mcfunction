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

# 待機時間が残っているなら、斬撃処理を行う
    execute unless entity @s[scores={SQ.WaitingTime=..0}] run function asset:artifact/1034.eiya/trigger/4.skill_active

# 待機時間を設定
    scoreboard players set @s SQ.WaitingTime 40

# スケジュールループを起動
    schedule function asset:artifact/1034.eiya/trigger/schedule 1t replace