#> asset:mob/0340.twins_rubiel/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/340/death

function asset:mob/super.death

# 処理スキップ
    execute if entity @s[tag=9E.Remove] run return 0

# 本来ありえないが念のためRootのremove処理を呼び出す
    scoreboard players operation $Uid Temporary = @e[type=item_display,tag=9G.ModelRoot,sort=nearest,limit=1] 9E.Uid
    execute as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/1.remove
    scoreboard players reset $Uid Temporary
