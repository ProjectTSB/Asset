#> asset:mob/0338.corundum_twins/tick/app/skill/event_handler/1.switch
#
# 各スキルのイベントハンドラへの処理振り分け
#
# @within function asset:mob/0338.corundum_twins/tick/

# タイマー増加
    execute unless entity @s[tag=9E.State.Await] run scoreboard players add @s 9E.SkillTimer 1

###########################################################################
## 汎用

# ルビィ怯みかばい攻撃
    execute if entity @s[tag=9E.Skill.Rubiel.Cover] run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_1_rubiel_cover/1.main
# サフィ怯みかばい攻撃
    execute if entity @s[tag=9E.Skill.Sapphiel.Cover] run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_2_sapphiel_cover/1.main
# 同時怯み
    execute if entity @s[tag=9E.Skill.Damage] run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_3_damage/1.main
# スタン
    execute if entity @s[tag=9E.Skill.Stun] run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_4_stun/1.main

###########################################################################
## シンクロ攻撃

# 交差攻撃
    execute if entity @s[tag=9E.Skill.Crossfire] run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/01_crossfire/1.main

# ぶん投げ
    execute if entity @s[tag=9E.Skill.Throw] run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/02_throw/1.main

# ランチャー
    execute if entity @s[tag=9E.Skill.Launcher] run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/03_launcher/1.main
