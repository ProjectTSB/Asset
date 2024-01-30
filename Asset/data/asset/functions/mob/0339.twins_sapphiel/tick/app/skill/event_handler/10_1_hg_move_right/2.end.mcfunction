#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_1_hg_move_right/2.end
#
# アニメーションのイベントハンドラ Hgステップ・右
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_1_hg_move_right/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Step.Right

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1

    tag @s add 9F.Skill.Hg.Riderkick
    scoreboard players set @s 9F.AnimationTimer 0