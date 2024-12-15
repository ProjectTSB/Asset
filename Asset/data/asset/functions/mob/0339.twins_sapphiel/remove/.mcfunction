#> asset:mob/0339.twins_sapphiel/remove/
#
# Mobのremove時の処理
#
# @within function asset:mob/alias/339/remove

function asset:mob/super.remove

# 通常は呼び出されない想定
# Rootのremove処理を呼び出す
    scoreboard players operation $Uid Temporary = @s 9E.Uid
    execute unless entity @s[tag=9F.Remove] as @e[type=slime,tag=9E.Root] if score @s 9E.Uid = $Uid Temporary at @s run function asset:mob/0338.corundum_twins/app/call_from_twins/1.remove
    scoreboard players reset $Uid Temporary
