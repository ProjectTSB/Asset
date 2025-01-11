#> asset:mob/0338.corundum_twins/tick/app/ai/2.1.phase_sapphiel
#
# 双子に指示を出す
#
# @within function asset:mob/0338.corundum_twins/tick/app/ai/1.main

# 指示
    execute as @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target] at @s run function asset:mob/0339.twins_sapphiel/app/call_from_root/1.interrupt

# フェーズ更新
    tag @s remove 9E.State.Phase.Sapphiel
    tag @s add 9E.State.Phase.Rubiel
    tag @s remove 9E.State.GetAwait.Sapphiel
    tag @s remove 9E.State.GetAwait.Rubiel
