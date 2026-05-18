#> asset:mob/0338.corundum_twins/death/app/4.remove_twins
#
# Mobの死亡時の処理
#
# @within function asset:mob/0338.corundum_twins/death/app/*

# 討伐演出再生
    data modify storage api: Argument.ID set value 2200
    data modify storage api: Argument.FieldOverride.Pos set from entity @s Pos
    function api:object/summon

# サフィの消去
    # ボスドロ
        #data modify storage api: Argument.ID set value 1079
        #data modify storage api: Argument.Important set value true
        #execute positioned ~-0.7 ~1.5 ~2 rotated ~-6 ~ run function api:artifact/spawn/from_id
    # 消去
        # execute as @e[tag=9F.ModelRoot,tag=9F.Target] run function animated_java:twins_sapphiel/remove/this
        execute as @e[tag=9F.Root,tag=9F.Target] run tag @s add 9E.Remove
        execute as @e[tag=9F.Root,tag=9F.Target] run function api:mob/kill_child_entity
        # function animated_java:twins_sapphiel/remove/all

# ルビィの消去
    # ボスドロ
        #data modify storage api: Argument.ID set value 1078
        #data modify storage api: Argument.Important set value true
        #execute positioned ~0.7 ~1.5 ~2 rotated ~6 ~ run function api:artifact/spawn/from_id
    # 消去
        # TODO：討伐演出再生
        # execute as @e[tag=9G.ModelRoot,tag=9G.Target] run function animated_java:twins_rubiel/remove/this
        execute as @e[tag=9G.Root,tag=9G.Target] run tag @s add 9E.Remove
        execute as @e[tag=9G.Root,tag=9G.Target] run function api:mob/kill_child_entity
        # function animated_java:twins_rubiel/remove/all
