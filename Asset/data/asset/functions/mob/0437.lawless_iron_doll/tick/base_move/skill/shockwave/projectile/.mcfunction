#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/projectile/
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/activate

# ハード
    # フェイズ2: 4個
        execute if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/projectile/4

# 祝福なき者よ(Blessless)
    # 最初から使う上に5個
        execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/projectile/5
