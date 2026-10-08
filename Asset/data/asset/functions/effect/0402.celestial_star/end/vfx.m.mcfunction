#> asset:effect/0402.celestial_star/end/vfx.m
#
# 星の位置で、中央の球が散って消える演出を行う
#
# @input args
#   X : double
#   Y : double
#   Z : double
# @within function asset:effect/0402.celestial_star/end/

    $particle dust 0.82 0.9 1 0.6 $(X) $(Y) $(Z) 0.5 0.5 0.5 0 40
    $particle end_rod $(X) $(Y) $(Z) 0.3 0.3 0.3 0.03 10
    $playsound block.beacon.deactivate player @a $(X) $(Y) $(Z) 1.5 1.6
    $playsound block.amethyst_cluster.break player @a $(X) $(Y) $(Z) 1.5 1.4
