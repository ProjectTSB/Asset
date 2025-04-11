#> asset:object/2054.lastboss_white_pillar/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2054/tick

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 見た目レーザー
    execute if score @s General.Object.Tick matches 10 run function asset:object/2054.lastboss_white_pillar/tick/visual_laser

# 雷が落ちてくる
    execute if score @s General.Object.Tick matches 15 run function asset:object/2054.lastboss_white_pillar/tick/thunder
