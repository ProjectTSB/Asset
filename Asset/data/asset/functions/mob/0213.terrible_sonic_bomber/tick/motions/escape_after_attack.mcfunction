#> asset:mob/0213.terrible_sonic_bomber/tick/motions/escape_after_attack
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion

#> prv
# @private
    #declare score_holder $use_weapon
    #declare tag 5X.ShouldTurn


#離脱
    execute store result score $use_weapon Temporary run data get storage asset:context this.use_weapon

    execute if score $use_weapon Temporary matches 1 run tag @s add 5X.ShouldTurn
    execute if score $use_weapon Temporary matches 1 run tp @s ~ ~ ~ ~-60 ~
    execute if score $use_weapon Temporary matches 2 run tp @s ~ ~ ~ ~ ~
    execute if score $use_weapon Temporary matches 3 run tp @s ~ ~ ~ ~ ~
    execute if score $use_weapon Temporary matches 4 run tp @s ~ ~ ~ ~ ~
    execute if score $use_weapon Temporary matches -4 run tp @s ~ ~ ~ ~ ~
    execute if score $use_weapon Temporary matches -4 run playsound minecraft:entity.donkey.death hostile @a[distance=..128] ~ ~ ~ 8.0 0.7 1

# AJ modelの向き合わせ
    execute rotated as @s on passengers if entity @s[tag=5X.ModelRoot] run tp @s ~ ~ ~ ~ ~

# 旋回してた場合旋回アニメーション
    execute if entity @s[tag=5X.ShouldTurn] on passengers if entity @s[tag=5X.ModelRoot] run function animated_java:terrible_sonic_bomber/animations/roll_back/play

# reset
    scoreboard players reset $use_weapon Temporary
    tag @s remove 5X.ShouldTurn
