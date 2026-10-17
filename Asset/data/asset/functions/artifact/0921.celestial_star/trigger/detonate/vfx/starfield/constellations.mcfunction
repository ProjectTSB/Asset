#> asset:artifact/0921.celestial_star/trigger/detonate/vfx/starfield/constellations
#
# 実行位置の上空に、3つの星座の表示を召喚する
# scripts/artifact/0921.celestial_star/generate_starfield.py で生成する
#
# @within function asset:artifact/0921.celestial_star/trigger/detonate/vfx/

    execute positioned ~7 ~7 ~4 run function asset:artifact/0921.celestial_star/trigger/detonate/vfx/starfield/key
    execute positioned ~-8 ~6 ~-2 run function asset:artifact/0921.celestial_star/trigger/detonate/vfx/starfield/wing
    execute positioned ~1 ~8 ~-8 run function asset:artifact/0921.celestial_star/trigger/detonate/vfx/starfield/lantern
