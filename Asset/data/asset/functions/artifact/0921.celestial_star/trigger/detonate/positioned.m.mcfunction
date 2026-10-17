#> asset:artifact/0921.celestial_star/trigger/detonate/positioned.m
#
# 星の座標へ実行位置を移して起爆の演出を出す
#
# @input args
#   X : double
#   Y : double
#   Z : double
# @within function asset:artifact/0921.celestial_star/trigger/detonate/

$execute positioned $(X) $(Y) $(Z) run function asset:artifact/0921.celestial_star/trigger/detonate/vfx/
