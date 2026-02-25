#> asset:mob/0445.sharkboss/tick/select_action/state_transition
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/select_action/

#行動の予約
    tag @s add CD.Reserving
    tag @s add CD.Action.EMP
    tag @s add CD.Electrified
    scoreboard players add @s CD.TransitionCounter 1
    scoreboard players set @s CD.ElectrifiedActionCounter 0

#チャット
    say サメのロレンチーニ器官が活性化した！
