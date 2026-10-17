#> asset:artifact/0921.celestial_star/trigger/detonate/vfx/starfield/
#
# 実行位置の上空に、星雲と、星座に属さない星の表示を召喚する
# scripts/artifact/0921.celestial_star/generate_starfield.py で生成する
#
# @within function asset:artifact/0921.celestial_star/trigger/detonate/vfx/

    function asset:artifact/0921.celestial_star/trigger/detonate/vfx/starfield/lone_stars
    execute positioned ~ ~2 ~ run function asset:artifact/0921.celestial_star/trigger/detonate/vfx/starfield/nebula
