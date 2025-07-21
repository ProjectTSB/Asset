#> asset:mob/0410.heiloang/tick/act/phase_3/
#
# フェーズ3
#
# @within asset:mob/0410.heiloang/tick/act/

# ノーマル
    execute if predicate api:global_vars/difficulty/1_normal run function asset:mob/0410.heiloang/tick/act/phase_3/normal

# ハード
    execute if predicate api:global_vars/difficulty/2_hard run function asset:mob/0410.heiloang/tick/act/phase_3/hard

# ブレスレス
    execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0410.heiloang/tick/act/phase_3/blessless
