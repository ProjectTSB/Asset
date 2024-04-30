#> asset:mob/0380.haruclaire_v3/tick/app/events/10_rod_idle/2.end
#
# スキルのイベントハンドラ 前半戦・待機 終了
#
# @within function asset:mob/0380.haruclaire_v3/tick/app/events/10_rod_idle/1.main

# タグ消去
    tag @s remove AK.Skill.Rod.Idle
# タイマー初期化
    scoreboard players set @s AK.AnimationTimer -1
