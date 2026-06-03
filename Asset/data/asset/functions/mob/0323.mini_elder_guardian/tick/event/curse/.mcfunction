#> asset:mob/0323.mini_elder_guardian/tick/event/curse/
#
#
#
# @within function asset:mob/0323.mini_elder_guardian/tick/

# 範囲内のプレイヤーにデバフを付与する
    execute as @a[gamemode=!spectator,distance=..32] run function asset:mob/0323.mini_elder_guardian/tick/event/curse/check
