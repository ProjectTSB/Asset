#> asset:mob/0338.corundum_twins/death/app/4.remove_twins
#
# Mobの死亡時の処理
#
# @within function asset:mob/0338.corundum_twins/death/app/*

# サフィの消去
    execute as @e[tag=9F.ModelRoot] run function animated_java:twins_sapphiel/remove/this
    tag @e[tag=9F.Root] add 9F.Remove
    kill @e[tag=9F.Root]

# ルビィの消去
    execute as @e[tag=9G.ModelRoot] run function animated_java:twins_rubiel/remove/this
    tag @e[tag=9G.Root] add 9F.Remove
    kill @e[tag=9G.Root]
