#> asset:mob/0181.magic_bookshelf/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/181/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 火、水、雷のいずれかの属性で攻撃する
# ノーマル以下では3つの中かランダム
# ハード以上では対象の最も耐性が脆弱な属性で攻撃する

# ノーマル以下
    execute if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0181.magic_bookshelf/attack/random_element

# ハード以上
    execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0181.magic_bookshelf/attack/weakness_element
