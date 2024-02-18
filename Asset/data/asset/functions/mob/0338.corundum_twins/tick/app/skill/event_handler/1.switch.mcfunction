#> asset:mob/0338.corundum_twins/tick/app/skill/event_handler/1.switch
#
# 各スキルのイベントハンドラへの処理振り分け
#
# @within function asset:mob/0338.corundum_twins/tick/2.tick

# タイマー増加
    execute unless entity @s[tag=9E.State.Await] run scoreboard players add @s 9E.SkillTimer 1

###########################################################################
## 汎用

# 集合
    # execute if entity @s[tag=9E.Skill.GoAlong] run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/00_goalong/1.main

###########################################################################
## シンクロ攻撃

# 交差攻撃
    execute if entity @s[tag=9E.Skill.Crossfire] run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/01_crossfire/1.main

# ぶん投げ
    execute if entity @s[tag=9E.Skill.Throw] run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/02_throw/1.main

# ランチャー
    execute if entity @s[tag=9E.Skill.Launcher] run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/03_launcher/1.main
