#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch
#
# 各スキルのイベントハンドラへの処理振り分け
#
# @within function asset:mob/0340.twins_rubiel/tick/2.tick

###########################################################################
## 汎用

## 登場演出
    execute if entity @s[tag=9G.Skill.Start] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/000_start/1.main

## 武器持ち替え
    ## 刀
        # execute if entity @s[tag=8T.Skill.Rod.ToSword] run function

###########################################################################
## 刀

## 待機
    execute if entity @s[tag=9G.Skill.Kt.Idle] run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/020_kt_idle/1.main
