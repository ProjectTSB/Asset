#> asset:object/2005.thunder_bomb/tick/thunder_summon/3
#
# サンダー召喚処理
#
# @within function asset:object/2005.thunder_bomb/tick/

# 120度ずつ回転させてサンダーを召喚する
    execute rotated ~ 0 positioned ^ ^ ^13 run function asset:object/2005.thunder_bomb/tick/thunder_summon/summon
    execute rotated ~120 0 positioned ^ ^ ^13 run function asset:object/2005.thunder_bomb/tick/thunder_summon/summon
    execute rotated ~240 0 positioned ^ ^ ^13 run function asset:object/2005.thunder_bomb/tick/thunder_summon/summon

# ハードは60度ずつ回転させてサンダーを召喚する
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~60 0 positioned ^ ^ ^13 run function asset:object/2005.thunder_bomb/tick/thunder_summon/summon
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~180 0 positioned ^ ^ ^13 run function asset:object/2005.thunder_bomb/tick/thunder_summon/summon
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~300 0 positioned ^ ^ ^13 run function asset:object/2005.thunder_bomb/tick/thunder_summon/summon
