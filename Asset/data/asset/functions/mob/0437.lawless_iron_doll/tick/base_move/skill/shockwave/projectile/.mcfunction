#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/projectile/
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/activate

# ハード
    # フェイズ2: 3-way
        execute if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/projectile/3

# 祝福なき者よ(Blessless)
    # 常時5-way。後半での強化はまた別の動作。
        execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/projectile/5
