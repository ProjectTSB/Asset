#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/2.end
#
# アニメーションのイベントハンドラ Sync交差攻撃・斬り上げ
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/1.main

# スキル判別用タグ消去
    tag @s remove 9G.Skill.Sync.Crossfire.Upper

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1

# Rootに待機通知
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/2.2.await_rubiel
    scoreboard players reset $Uid Temporary
