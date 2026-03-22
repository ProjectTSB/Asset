#> asset:mob/0456.gargo_ex_machina/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/456/tick

# スキル用イベントハンドラ
    function asset:mob/0456.gargo_ex_machina/tick/event/

# 多重ヒット防止
    execute as @a[scores={CO.UpperShot.Hit=1..}] run scoreboard players remove @s CO.UpperShot.Hit 1
    execute as @a[scores={CO.UpperShot.Hit=..0}] run scoreboard players reset @s CO.UpperShot.Hit

# 戦闘タイマー増加
    scoreboard players add @s CO.BattleTimer 1
