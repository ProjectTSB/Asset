#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/30_sync_goalong/2.end
#
# アニメーションのイベントハンドラ Sync集合
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/30_sync_goalong/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Sync.Goalong

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1

# Rootに待機通知
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/2.1.await_sapphiel
    scoreboard players reset $Uid Temporary
