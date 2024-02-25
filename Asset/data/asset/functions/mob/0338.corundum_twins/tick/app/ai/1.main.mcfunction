#> asset:mob/0338.corundum_twins/tick/app/ai/1.main
#
# 双子に指示を出す
#
# @within function asset:mob/0338.corundum_twins/tick/2.tick

# サフィに指示
    execute if entity @s[tag=9E.State.Phase.Sapphiel,tag=9E.State.GetAwait.Rubiel] run function asset:mob/0338.corundum_twins/tick/app/ai/2.1.phase_sapphiel

# ルビィに指示
    execute if entity @s[tag=9E.State.Phase.Rubiel,tag=9E.State.GetAwait.Sappihel] run function asset:mob/0338.corundum_twins/tick/app/ai/2.2.phase_rubiel
