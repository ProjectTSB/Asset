#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/2.end
#
# アニメーションのイベントハンドラ 怯みかばい攻撃
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/41_cover/1.main

# アニメーション終了
    tag @s remove 9G.Skill.Cover

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
