#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_5_hg_move_back/2.end
#
# アニメーションのイベントハンドラ Hgステップ・後
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_5_hg_move_back/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Step.Back

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1
