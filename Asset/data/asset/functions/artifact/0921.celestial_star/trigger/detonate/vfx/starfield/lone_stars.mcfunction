#> asset:artifact/0921.celestial_star/trigger/detonate/vfx/starfield/lone_stars
#
# 実行位置を中心に、星座に属さない星を wax_off で描き、余韻のチャイムを鳴らす表示を召喚する
# scripts/artifact/0921.celestial_star/generate_starfield.py で生成する
#
# @within function asset:artifact/0921.celestial_star/trigger/detonate/vfx/starfield/

    data modify storage api: Argument.ID set value 1197
    data modify storage api: Argument.FieldOverride set value {Stars:[{X:8.39d,Y:4.85d,Z:-5.11d},{X:5.06d,Y:2.94d,Z:0.46d},{X:-1.32d,Y:3.2d,Z:2.83d},{X:-8.79d,Y:2.54d,Z:-2.68d},{X:3.37d,Y:8.78d,Z:6.87d},{X:-3.92d,Y:9.31d,Z:-4.02d},{X:1.68d,Y:5.38d,Z:-0.62d},{X:-4.85d,Y:4.6d,Z:1.86d},{X:0.95d,Y:8.03d,Z:4.61d},{X:-1.78d,Y:9.65d,Z:-3.66d},{X:2.93d,Y:2.7d,Z:2.9d},{X:-8.26d,Y:2.99d,Z:-5.42d},{X:-4.11d,Y:3.06d,Z:0.36d},{X:-4.74d,Y:4.86d,Z:3.71d},{X:-1.68d,Y:7.74d,Z:8.35d},{X:6.89d,Y:3d,Z:-2.91d},{X:-3.54d,Y:5.51d,Z:-8.3d},{X:2.8d,Y:3.56d,Z:-5.17d},{X:-0.5d,Y:6.42d,Z:-2.2d},{X:-2.4d,Y:8.84d,Z:-0.6d},{X:-6.12d,Y:9.83d,Z:5.09d},{X:1.53d,Y:8.38d,Z:-0.39d},{X:-9.51d,Y:3.82d,Z:0.79d},{X:-2.25d,Y:5.49d,Z:8.97d}],Chime:true}
    function api:object/summon
