#> asset:mob/0338.corundum_twins/tick/app/ai/2.2.phase_rubiel
#
# 双子に指示を出す
#
# @within function asset:mob/0338.corundum_twins/tick/app/ai/1.main

# 指示
    execute as @e[type=wither_skeleton,tag=9G.Root,tag=9G.Target] at @s run function asset:mob/0340.twins_rubiel/app/call_from_root/1.interrupt

# フェーズ更新
    tag @s remove 9E.State.Phase.Rubiel
    tag @s add 9E.State.Phase.Sapphiel
    tag @s remove 9E.State.GetAwait.Sapphiel
    tag @s remove 9E.State.GetAwait.Rubiel
