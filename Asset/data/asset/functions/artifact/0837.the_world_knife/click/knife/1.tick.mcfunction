#> asset:artifact/0837.the_world_knife/click/knife/1.tick
#
#
#
# @within function
#      asset:artifact/0837.the_world_knife/click/
#      asset:artifact/0837.the_world_knife/click/knife/1.tick
#      asset:artifact/0837.the_world_knife/rejoin_process

# 動いていないナイフが実行する処理
    execute as @e[type=armor_stand,tag=N9.Knife,tag=!N9.Start] at @s run function asset:artifact/0837.the_world_knife/click/knife/2.1.pause

# 稼働中のナイフが実行する処理
    execute as @e[type=armor_stand,tag=N9.Start] at @s run function asset:artifact/0837.the_world_knife/click/knife/2.2.move
    execute as @e[type=armor_stand,tag=N9.Start] at @s run function asset:artifact/0837.the_world_knife/click/knife/2.2.move
    execute as @e[type=armor_stand,tag=N9.Start] at @s run function asset:artifact/0837.the_world_knife/click/knife/2.2.move
    execute as @e[type=armor_stand,tag=N9.Start] at @s run function asset:artifact/0837.the_world_knife/click/knife/2.2.move

# Scheduleループ
    execute if entity @e[type=armor_stand,tag=N9.Knife,limit=1] run schedule function asset:artifact/0837.the_world_knife/click/knife/1.tick 1t replace
