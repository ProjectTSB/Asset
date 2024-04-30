#> asset:mob/0380.haruclaire_v3/tick/app/events/
#
# スキルのイベントハンドラ・分岐処理
#
# @within function asset:mob/0380.haruclaire_v3/tick/

## 前半戦

# 待機
    execute if entity @s[tag=AK.Skill.Rod.Idle] run function asset:mob/0380.haruclaire_v3/tick/app/events/10_rod_idle/1.main
