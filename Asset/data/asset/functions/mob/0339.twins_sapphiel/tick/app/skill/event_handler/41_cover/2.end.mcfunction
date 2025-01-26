#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/2.end
#
# アニメーションのイベントハンドラ 怯みかばい攻撃
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/1.main

# アニメーション終了
    tag @s remove 9F.Skill.Cover

# タイマー・カウントリセット
    scoreboard players set @s 9F.AnimationTimer -1
