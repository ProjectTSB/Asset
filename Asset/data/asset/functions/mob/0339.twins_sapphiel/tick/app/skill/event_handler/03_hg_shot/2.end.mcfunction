#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_hg_shot/2.end
#
# アニメーションのイベントハンドラ Hg射撃
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_hg_shot/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Shot

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1
