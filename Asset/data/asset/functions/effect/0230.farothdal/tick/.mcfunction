#> asset:effect/0230.farothdal/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0230.farothdal/_/tick

# 補正
    execute if data storage asset:context this{Sprint:false} if predicate lib:is_sprinting run function asset:effect/0230.farothdal/modifier/add
    execute if data storage asset:context this{Sprint: true} unless predicate lib:is_sprinting run function asset:effect/0230.farothdal/modifier/remove
