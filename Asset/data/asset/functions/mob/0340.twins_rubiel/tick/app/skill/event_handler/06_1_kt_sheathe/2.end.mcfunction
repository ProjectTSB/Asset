#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_1_kt_sheathe/2.end
#
# アニメーションのイベントハンドラ Kt納刀
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_1_kt_sheathe/1.main

# 待機通知
    execute unless entity @s[tag=9G.State.Await] run function asset:mob/0340.twins_rubiel/tick/app/skill/select/2.notify

# 納刀待機に移行
    tag @s remove 9G.Skill.Kt.Sheathe
    tag @s add 9G.Skill.Kt.Sheathe.Wait.Jumonji

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer 0
