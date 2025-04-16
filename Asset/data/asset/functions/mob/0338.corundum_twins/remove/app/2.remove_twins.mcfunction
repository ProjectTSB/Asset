#> asset:mob/0338.corundum_twins/remove/app/2.remove_twins
#
# Mobの死亡時の処理
#
# @within function asset:mob/0338.corundum_twins/remove/app/1.remove

# サフィの消去
    execute as @e[tag=9F.ModelRoot,tag=9F.Target] run function animated_java:twins_sapphiel/remove/this
    execute as @e[tag=9F.Root,tag=9F.Target] run function api:mob/remove_child_entity

# ルビィの消去
    execute as @e[tag=9G.ModelRoot,tag=9G.Target] run function animated_java:twins_rubiel/remove/this
    execute as @e[tag=9G.Root,tag=9G.Target] run function api:mob/remove_child_entity
