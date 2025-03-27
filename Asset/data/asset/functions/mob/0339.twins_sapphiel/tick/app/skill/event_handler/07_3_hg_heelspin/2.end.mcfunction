#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/2.end
#
# アニメーションのイベントハンドラ Hg2連回し蹴り
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_3_hg_heelspin/1.main

# アニメーション停止
    tag @s remove 9F.Skill.Hg.Warp.Heelspin

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1
