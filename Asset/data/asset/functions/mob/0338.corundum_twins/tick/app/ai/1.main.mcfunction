#> asset:mob/0338.corundum_twins/tick/app/ai/1.main
#
# 双子に指示を出す
#
# @within function asset:mob/0338.corundum_twins/tick/

# サフィに指示
    execute if entity @s[tag=9E.State.Phase.Sapphiel,tag=9E.State.GetAwait.Rubiel] if entity @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target,tag=!9F.Skill.Damage.Down,tag=!9F.Skill.Damage.End,tag=!9F.State.IsReload] run function asset:mob/0338.corundum_twins/tick/app/ai/2.1.phase_sapphiel

# ルビィに指示
    execute if entity @s[tag=9E.State.Phase.Rubiel,tag=9E.State.GetAwait.Sappihel] if entity @e[type=wither_skeleton,tag=9G.Root,tag=9G.Target,tag=!9G.Skill.Damage.Down,tag=!9G.Skill.Damage.End] run function asset:mob/0338.corundum_twins/tick/app/ai/2.2.phase_rubiel
