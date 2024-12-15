#> asset:mob/0340.twins_rubiel/init/
# @within asset:mob/alias/340/init

function asset:mob/super.init

# execute unless entity @s[type=slime,tag=9E.Root] run tellraw @a [{"text":"【0340.twins_rubielは0338.corundum_twinsの処理でのみ召喚できます】","color":"white"}]
# execute unless entity @s[type=slime,tag=9E.Root] run return -1
execute positioned ~ ~100 ~ rotated ~ 0 run function animated_java:twins_rubiel/summon {args:{}}
function asset:mob/0340.twins_rubiel/summon/app/1.init

scoreboard players operation @s ForwardTargetMobUUID = @e[type=slime,sort=nearest,limit=1] MobUUID
