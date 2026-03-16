#> asset:object/1153.flare_butterfly/tick/move/search_target/recursive
#
#
#
# @within function
#   asset:object/1153.flare_butterfly/tick/move/search_target/
#   asset:object/1153.flare_butterfly/tick/move/search_target/recursive

# 既にTargetMobUUIDが設定されていればreturn
    execute if data storage asset:context this.TargetMobUUID run return fail

# 自身が近くにいたら成功してreturn
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run return run function asset:object/1153.flare_butterfly/tick/move/search_target/success

# 再帰
    execute positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision/ run function asset:object/1153.flare_butterfly/tick/move/search_target/recursive
