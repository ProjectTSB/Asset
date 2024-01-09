#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_2_hg_fullburst_main/2.end
#
# アニメーションのイベントハンドラ Hg正拳突き
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_2_hg_fullburst_main/1.main

# アニメーション停止
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation

# 再帰
    execute unless score @s 9F.BulletCount.Hg matches 16.. run tag @s add 9F.Skill.Hg.Fullburst.Main
    execute if score @s 9F.BulletCount.Hg matches 16.. run tag @s add 9F.Skill.Hg.Fullburst.End

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0
