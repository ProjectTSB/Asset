#> asset:mob/0340.twins_rubiel/tick/app/skill/select/2.notify
#
# Rootに待機状態を通知する
#
# @within
#     function asset:mob/0340.twins_rubiel/tick/app/skill/select/1.main
#     function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_1_kt_sheathe/2.end

# Rootに待機通知
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/2.2.await_rubiel
    scoreboard players reset $Uid Temporary

# 状態変更
    tag @s add 9G.State.Await
