#> asset:effect/221.hunters_run/modify/add
#
#
#
# @within function asset:effect/221.hunters_run/given/

#> Val
# @private
#declare score_holder $Stack

# スタック数
    execute store result score $Stack Temporary run data get storage asset:context Stack

# 移動速度上げる
    execute if score $Stack Temporary matches 1 run attribute @s minecraft:generic.movement_speed modifier add 00000001-0000-0003-0000-00dd00000000 "221" 0.50 add
    execute if score $Stack Temporary matches 2 run attribute @s minecraft:generic.movement_speed modifier add 00000001-0000-0003-0000-00dd00000000 "221" 0.75 add
    execute if score $Stack Temporary matches 3 run attribute @s minecraft:generic.movement_speed modifier add 00000001-0000-0003-0000-00dd00000000 "221" 0.95 add
    execute if score $Stack Temporary matches 4 run attribute @s minecraft:generic.movement_speed modifier add 00000001-0000-0003-0000-00dd00000000 "221" 1.15 add
    execute if score $Stack Temporary matches 5 run attribute @s minecraft:generic.movement_speed modifier add 00000001-0000-0003-0000-00dd00000000 "221" 1.35 add
    execute if score $Stack Temporary matches 6 run attribute @s minecraft:generic.movement_speed modifier add 00000001-0000-0003-0000-00dd00000000 "221" 1.55 add
    execute if score $Stack Temporary matches 7 run attribute @s minecraft:generic.movement_speed modifier add 00000001-0000-0003-0000-00dd00000000 "221" 1.75 add
    execute if score $Stack Temporary matches 8 run attribute @s minecraft:generic.movement_speed modifier add 00000001-0000-0003-0000-00dd00000000 "221" 1.95 add
    execute if score $Stack Temporary matches 9 run attribute @s minecraft:generic.movement_speed modifier add 00000001-0000-0003-0000-00dd00000000 "221" 2.15 add


# リセット
    scoreboard players reset $Stack