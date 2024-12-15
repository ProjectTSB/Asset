#> asset:mob/0339.twins_sapphiel/init/
# @within asset:mob/alias/339/init

function asset:mob/super.init

# execute unless entity @s[type=slime,tag=9E.Root] run tellraw @a [{"text":"【0339.twins_sapphielは0338.corundum_twinsの処理でのみ召喚できます】","color":"white"}]
# execute unless entity @s[type=slime,tag=9E.Root] run return -1
execute positioned ~ ~0 ~ rotated ~ 0 run function animated_java:twins_sapphiel/summon {args:{}}
function asset:mob/0339.twins_sapphiel/summon/app/1.init
