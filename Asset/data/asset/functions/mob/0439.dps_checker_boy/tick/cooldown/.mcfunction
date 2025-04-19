#> asset:mob/0439.dps_checker_boy/tick/cooldown/
#
#
#
# @within function asset:mob/0439.dps_checker_boy/tick/

execute store result storage asset:context this.Cooldown int 1 run data get storage asset:context this.Cooldown 0.999999999999
execute if data storage asset:context this{Cooldown:0} run function asset:mob/0439.dps_checker_boy/tick/cooldown/reset
