#> asset:mob/0338.corundum_twins/death/app/4.remove_twins
#
# Mobの死亡時の処理
#
# @within function asset:mob/0338.corundum_twins/death/app/*

# サフィの消去
    execute as @e[tag=9F.Root,tag=9F.Target] run function api:mob/kill
    # execute as @e[tag=9F.ModelRoot,tag=9F.Target] run function animated_java:twins_sapphiel/remove/this
    # tag @e[tag=9F.Root,tag=9F.Target] add 9F.Remove
    # kill @e[tag=9F.Root,tag=9F.Target]

# ルビィの消去
    execute as @e[tag=9G.Root,tag=9G.Target] run function api:mob/kill
    # execute as @e[tag=9G.ModelRoot,tag=9G.Target] run function animated_java:twins_rubiel/remove/this
    # tag @e[tag=9G.Root,tag=9G.Target] add 9G.Remove
    # kill @e[tag=9G.Root,tag=9G.Target]
