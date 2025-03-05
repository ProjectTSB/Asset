#> asset:mob/0213.terrible_sonic_bomber/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/213/remove

# Todo: ミサイルを消す
# Todo: 対空砲を消す

# super
    function asset:mob/super.remove

# remove markers
    kill @e[tag=5X.Centre]

# remove objects
    execute as @e[tag=PatriotLauncherRoot] run function animated_java:patriot_launcher/remove/this 
    execute as @e[scores={ObjectID=2082..2088}] on passengers run kill @s
    execute as @e[scores={MobID=214}] run function api:mob/remove
    kill @e[scores={ObjectID=2082..2088}]
