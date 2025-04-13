#> asset:mob/0213.terrible_sonic_bomber/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/213/death

# remove aj model
    execute on passengers as @s[tag=5X.ModelRoot] run function animated_java:terrible_sonic_bomber/remove/this

# super
    function asset:mob/super.death

# 死亡演出オブジェクト召喚
    data modify storage api: Argument.ID set value 2203
    function api:object/summon

# remove objects and mobs
    execute as @e[tag=PatriotLauncherRoot] run function animated_java:patriot_launcher/remove/this 
    execute as @e[scores={ObjectID=2082..2089}] on passengers run kill @s
    execute as @e[scores={MobID=214}] run function api:mob/remove
    execute as @e[scores={MobID=436}] run function api:mob/remove
    kill @e[scores={ObjectID=2082..2089}]

    
