#> asset:mob/0331.aurora_sorcerer/tick/make_scaffold/check
#
#
#
# @within function asset:mob/0331.aurora_sorcerer/tick/

# 足場Objectが近くにいるなら失敗
    execute align xyz positioned ~-2 ~-2 ~-2 if entity @e[type=marker,scores={ObjectID=2221},dx=3,dy=3,dz=3] run return fail

# 破壊可能エリアであるか
    execute unless predicate api:area/is_breakable run return fail

# 設置のCDが終わっているか
    execute unless data storage asset:context this{CannotMakeScaffoldTick:0} run return fail

# 自身が空中にいるか
    execute unless block ~ ~-1 ~ #lib:no_collision_without_fluid run return fail
    execute unless block ~ ~-2 ~ #lib:no_collision_without_fluid run return fail
    execute unless block ~ ~-3 ~ #lib:no_collision_without_fluid run return fail

# 成功
    return 1
