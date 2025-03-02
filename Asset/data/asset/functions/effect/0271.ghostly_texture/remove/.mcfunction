#> asset:effect/0271.ghostly_texture/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0271.ghostly_texture/_/remove

# 低速落下と透明化を解除
    effect clear @s slow_falling
    effect clear @s invisibility
