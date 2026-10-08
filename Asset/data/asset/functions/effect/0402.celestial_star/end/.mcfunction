#> asset:effect/0402.celestial_star/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0402.celestial_star/_/end

# 星の位置で、中央の球が散って消える演出を行う
    function asset:effect/0402.celestial_star/end/vfx.m with storage asset:context this.Pos
