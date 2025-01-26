#> asset:mob/0338.corundum_twins/app/call_from_twins/4.2.counter_rubiel
#
# 双子側から呼び出されるhurt処理
#
# @within
#    function asset:mob/0340.twins_rubiel/hurt/app/5.counter

# 反撃発動回数増加
    scoreboard players add @s 9E.ForceCounterCount 1

# フェーズ更新
    tag @s add 9E.State.Phase.Sapphiel
    tag @s remove 9E.State.Phase.Rubiel
    tag @s remove 9E.State.GetAwait.Sapphiel
    tag @s remove 9E.State.GetAwait.Rubiel
