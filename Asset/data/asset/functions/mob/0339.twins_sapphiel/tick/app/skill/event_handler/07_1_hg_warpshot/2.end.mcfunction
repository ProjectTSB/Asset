#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/2.end
#
# アニメーションのイベントハンドラ Hgかかと落とし
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_2_hg_heeloff/1.main

# アニメーション停止
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation

#  かかと落としまたは引き撃ちに遷移
    tag @s remove 9F.Skill.Hg.Warp.Shot
    # tag @s add 9F.Skill.Hg.BackShot
    tag @s add 9F.Skill.Hg.Warp.Heeloff

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0
