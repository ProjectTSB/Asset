#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_1_lc_shot_jump/2.end
#
# アニメーションのイベントハンドラ Lc射撃・ジャンプ
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_1_lc_shot_jump/1.main

# 射撃・エイムに遷移
    tag @s remove 9F.Skill.Lc.Jump
    tag @s add 9F.Skill.Lc.Aim

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0

# Rootに待機通知
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/2.1.await_sapphiel
    scoreboard players reset $Uid Temporary
