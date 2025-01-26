#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_1_hg_shot_move_right/2.end
#
# アニメーションのイベントハンドラ Hg側転射撃
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_1_hg_shot_move_right/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Shot.MoveRight

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1
