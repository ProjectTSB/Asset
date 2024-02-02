#> asset:mob/0156.infringement/tick/5.debuff
#
# 自爆時のデバフを付与
#
# @within function asset:mob/0156.infringement/tick/4.explode

# 侵害エフェクトを付与
# ハード以上でLv2を付与する
    data modify storage api: Argument.ID set value 612
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.Stack set value 2
    function api:entity/mob/effect/give