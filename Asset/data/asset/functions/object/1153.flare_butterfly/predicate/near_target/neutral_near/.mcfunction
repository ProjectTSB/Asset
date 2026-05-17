#> asset:object/1153.flare_butterfly/predicate/near_target/neutral_near/
#
#
#
# @within function asset:object/1153.flare_butterfly/tick/**

execute store result storage asset:context this.Success int 1 run function asset:object/1153.flare_butterfly/predicate/near_target/neutral_near/m with storage asset:context this

execute if data storage asset:context this{Success:1} run return 1
execute if data storage asset:context this{Success:0} run return 0
