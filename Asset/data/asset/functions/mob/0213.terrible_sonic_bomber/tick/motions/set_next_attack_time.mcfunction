#> asset:mob/0213.terrible_sonic_bomber/tick/motions/set_next_attack_time
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion

#> prv
# @private
    #declare score_holder $current_next_attack_time
    #declare score_holder $next_attack_time

# 次回攻撃時刻を記録
    execute store result score $next_attack_time Temporary run time query gametime
    execute store result score $current_next_attack_time Temporary run data get storage asset:context this.next_attack_time
    execute if score $current_next_attack_time Temporary < $next_attack_time Temporary store result storage asset:context this.next_attack_time int 1 run scoreboard players add $next_attack_time Temporary 60

# 標的タグを外す
    tag @a remove 5X.BrimstoneTarget

# reset 
    scoreboard players reset $next_attack_time Temporary
    scoreboard players reset $current_next_attack_time Temporary
