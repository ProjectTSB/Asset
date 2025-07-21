#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/alert/
#
# 警告を開始する。難易度やフェイズで分岐。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/tick

# ノーマル
    # フェイズ2: 常時3-way。ちょっと厳しい気もする。
        execute if predicate api:global_vars/difficulty/1_normal run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/alert/3

# ハード
    # フェイズ1: 3-way
        execute if predicate api:global_vars/difficulty/2_hard if score @s C5.Phase matches 1 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/alert/3
    # フェイズ2: 5-way
        execute if predicate api:global_vars/difficulty/2_hard if score @s C5.Phase matches 2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/alert/5

# 祝福なき者よ(Blessless)
    # 常時5-way。後半ではモーションが強化される。
        execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/alert/5
