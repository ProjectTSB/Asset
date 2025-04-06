#> asset:mob/0410.heiloang/tick/act/phase_3/
#
# フェーズ3
#
# @within asset:mob/0410.heiloang/tick/act/

# ノーマル
    execute if predicate api:global_vars/difficulty/easy run function asset:mob/0410.heiloang/tick/act/phase_3/normal

# ハード
    execute if predicate api:global_vars/difficulty/normal run function asset:mob/0410.heiloang/tick/act/phase_3/hard

# ブレスレス
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0410.heiloang/tick/act/phase_3/blessless
