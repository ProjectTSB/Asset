#> asset:mob/0412.tiamat/tick/event/
#
# アニメーションイベントの振り分け処理
#
# @within asset:mob/0412.tiamat/tick/

# 登場
    execute if entity @s[tag=BG.Skill.Start] run function asset:mob/0412.tiamat/tick/event/start/
