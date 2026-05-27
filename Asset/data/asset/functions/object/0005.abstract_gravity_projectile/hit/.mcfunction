#> asset:object/0005.abstract_gravity_projectile/hit/
#
# ヒット時の処理。デフォルトではキル処理があるのみ。
#
# @within asset:object/alias/5/hit

# フェイルセーフ用の消える処理
    execute on vehicle run kill @s

# マーカーを消す処理
    kill @s
