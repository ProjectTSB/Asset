#> asset:mob/0186.ferocious_bee/tick/damage/check_duplicate
#
#
#
# @within function asset:mob/0186.ferocious_bee/tick/damage/

# ダメージ
   function asset:mob/call.m {method:"check_duplicate"}
   execute if predicate asset:mob/2002.duplicate_hit_protection_mixin/is_first_hit run function api:damage/

# 演出
    execute if predicate asset:mob/2002.duplicate_hit_protection_mixin/is_first_hit run playsound entity.bee.sting hostile @s ~ ~ ~ 1 1
