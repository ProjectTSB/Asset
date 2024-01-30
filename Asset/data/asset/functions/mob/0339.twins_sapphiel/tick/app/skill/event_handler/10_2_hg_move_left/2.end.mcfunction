#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_2_hg_move_left/2.end
#
# アニメーションのイベントハンドラ Hgステップ・左
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_2_hg_move_left/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Step.Left

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1
