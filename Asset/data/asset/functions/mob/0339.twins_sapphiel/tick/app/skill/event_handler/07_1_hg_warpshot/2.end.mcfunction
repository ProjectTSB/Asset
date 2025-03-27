#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/2.end
#
# アニメーションのイベントハンドラ Hgかかと落とし
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/07_1_hg_warpshot/1.main

# アニメーション停止
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation

#  かかと落としまたは引き撃ちに遷移
    tag @s remove 9F.Skill.Hg.Warp.Shot
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..8] run tag @s add 9F.Skill.Hg.BackShot
    execute if entity @s[tag=!9F.Skill.Hg.BackShot] run tag @s add 9F.Skill.Hg.Warp.Heeloff

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0
