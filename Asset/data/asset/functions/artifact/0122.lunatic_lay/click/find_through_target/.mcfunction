#> asset:artifact/0122.lunatic_lay/click/find_through_target/
#
#
#
# @within function asset:artifact/0122.lunatic_lay/click/check

execute if data storage asset:temp {IsTargetEntityFound:true} run return fail
execute facing entity @s eyes run function asset:artifact/0122.lunatic_lay/click/find_through_target/check_through
execute if entity @s[tag=3E.Hit] run data modify storage asset:temp IsTargetEntityFound set value true
