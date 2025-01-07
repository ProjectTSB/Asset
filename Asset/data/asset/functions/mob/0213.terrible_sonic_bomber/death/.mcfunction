#> asset:mob/0213.terrible_sonic_bomber/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/213/death

# super
function asset:mob/super.death

# remove markers
kill @e[tag=5X.Centre]

# remove objects and mobs
execute as @e[scores={ObjectID=2082..2088}] on passengers run kill @s
execute as @e[scores={MobID=214}] run function api:mob/remove
kill @e[scores={ObjectID=2082..2088}]
