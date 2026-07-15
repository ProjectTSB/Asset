#> asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/2.select_target
#
#
#
# @within function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/1.set_y.m

# 円柱範囲内からランダムな敵1体を選ぶ
    data modify storage lib: Argument.BoundingCylinder.Radius set value 8.0d
    data modify storage lib: Argument.BoundingCylinder.Height set value 16.25d
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..16]"
    execute positioned ~ ~-8.25 ~ run function lib:bounding_cylinder/

#
    execute at @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..16,sort=random,limit=1] run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/3.spread_pos

# リセット
    tag @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..16] remove BoundingCylinder
