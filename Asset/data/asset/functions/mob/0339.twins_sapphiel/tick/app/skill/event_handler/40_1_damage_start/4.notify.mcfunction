#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_1_damage_start/4.notify
#
# アニメーションのイベントハンドラ Sync怯み庇い
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_1_damage_start/1.main

# Rootに通知
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/skill/40_down/1.sapphiel_down
    scoreboard players reset $Uid Temporary
