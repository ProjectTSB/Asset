#> asset:mob/0340.twins_rubiel/remove/
#
# Mobのremove時の処理
#
# @within function asset:mob/alias/340/remove

function asset:mob/super.remove

# Rootのremove処理を呼び出す
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/1.remove
    scoreboard players reset $Uid Temporary
