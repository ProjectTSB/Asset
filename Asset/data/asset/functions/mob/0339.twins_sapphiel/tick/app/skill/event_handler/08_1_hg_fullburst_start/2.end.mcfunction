#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_1_hg_fullburst_start/2.end
#
# アニメーションのイベントハンドラ Hg正拳突き
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_1_hg_fullburst_start/1.main

# アニメーション停止
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation

# フルバースト・射撃に遷移
    tag @s remove 9F.Skill.Hg.Fullburst.Start
    tag @s add 9F.Skill.Hg.Fullburst.Main

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0
