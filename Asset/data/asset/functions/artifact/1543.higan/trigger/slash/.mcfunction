#> asset:artifact/1543.higan/trigger/slash/
#
#
#
# @within function asset:artifact/1543.higan/trigger/vfx

#> Private
# @private
    #declare score_holder $RandomPos

#
    execute store result score $RandomPos Temporary run random value 0..4

# 適当に乱数で決定
    execute if score $RandomPos Temporary matches 0 run function asset:artifact/1543.higan/trigger/slash/summon
    execute if score $RandomPos Temporary matches 1 positioned ^0.1 ^0.1 ^ run function asset:artifact/1543.higan/trigger/slash/summon
    execute if score $RandomPos Temporary matches 2 positioned ^-0.1 ^0.1 ^ run function asset:artifact/1543.higan/trigger/slash/summon
    execute if score $RandomPos Temporary matches 3 positioned ^0.1 ^-0.1 ^ run function asset:artifact/1543.higan/trigger/slash/summon
    execute if score $RandomPos Temporary matches 4 positioned ^-0.1 ^-0.1 ^ run function asset:artifact/1543.higan/trigger/slash/summon



#
    scoreboard players reset $RandomPos Temporary
