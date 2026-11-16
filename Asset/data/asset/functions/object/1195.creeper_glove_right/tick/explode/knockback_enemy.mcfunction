#> asset:object/1195.creeper_glove_right/tick/explode/knockback_enemy
#
# 実行向きへ敵を飛ばす
#
# @within function asset:object/1195.creeper_glove_right/tick/explode/

# lib:motion/lookingは呼ぶたびに引数を消すので、対象ごとに設定する
    data modify storage lib: Argument.VectorMagnitude set from storage asset:context this.EnemyKnockback
    data modify storage lib: Argument.KnockbackResist set value 1b
    function lib:motion/looking
