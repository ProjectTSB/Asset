#> asset:mob/0390.triple_rabbits/ai/general/break_block
#
# ブロックを破壊する
#
# @within function asset:mob/0390.triple_rabbits/tick/

# ブロックを破壊する
    execute if predicate api:area/is_breakable run fill ~-15 ~ ~-15 ~15 ~3 ~15 air destroy
