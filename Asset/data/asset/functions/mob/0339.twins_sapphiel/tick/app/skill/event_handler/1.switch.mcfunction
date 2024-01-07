#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch
#
# 各スキルのイベントハンドラへの処理振り分け
#
# @within function asset:mob/0339.twins_sapphiel/tick/2.tick

###########################################################################
## 汎用

## 登場演出
    execute if entity @s[tag=9F.Skill.Start] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/00_start/1.main

## 武器持ち替え
    ## ハンドガン
        # execute if entity @s[tag=8T.Skill.Rod.ToSword] run function

###########################################################################
## ハンドガン

## 待機
    execute if entity @s[tag=9F.Skill.Hg.Idle] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/02_hg_idle/1.main

## 射撃
    execute if entity @s[tag=9F.Skill.Hg.Shot] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_hg_shot/1.main
