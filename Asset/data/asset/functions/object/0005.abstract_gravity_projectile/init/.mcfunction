#> asset:object/0005.abstract_gravity_projectile/init/
#
# Objectのinit時の処理。見た目などの設定は、ここで設定する想定。
#
# @within asset:object/alias/5/init

# モーション
    data modify storage lib: Argument.VectorMagnitude set from storage asset:context this.Motion
    execute on vehicle run function lib:motion/

# ダメージを与えて描画更新
    execute on vehicle run damage @s 0
