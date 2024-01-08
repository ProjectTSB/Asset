#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/2.end
#
# アニメーションのイベントハンドラ Hg正拳突き
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/1.main

# アニメーション停止
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation

# 側転射撃に遷移
    tag @s remove 9F.Skill.Hg.Punch
    tag @s add 9F.Skill.Hg.Shot.MoveLeft

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0
