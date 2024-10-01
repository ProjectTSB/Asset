#> asset:mob/0181.magic_bookshelf/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0181.magic_bookshelf/_/attack

# 火、水、雷のいずれかの属性で攻撃する
# ノーマル以下では3つの中かランダム
# ハード以上では対象の最も耐性が脆弱な属性で攻撃する

# ノーマル以下
    execute if predicate api:global_vars/difficulty/max/normal run function asset:mob/0181.magic_bookshelf/attack/random_element

# ハード以上
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0181.magic_bookshelf/attack/weakness_element
