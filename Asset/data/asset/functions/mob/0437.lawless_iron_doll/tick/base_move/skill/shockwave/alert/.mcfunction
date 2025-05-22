#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/alert/
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/tick

# ハード
    # フェイズ1: 3-way
        execute if predicate api:global_vars/difficulty/2_hard run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/alert/3

# 祝福なき者よ(Blessless)
    # 5-way
        execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/alert/5
