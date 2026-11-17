#> asset:artifact/1680.pluvia/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1680.pluvia/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 円柱Libで敵を探す
    data modify storage lib: Argument.BoundingCylinder.Radius set value 6.0d
    data modify storage lib: Argument.BoundingCylinder.Height set value 7d
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10]"
    execute positioned ~ ~-3 ~ run function lib:bounding_cylinder/

# 敵がいたら攻撃
    execute as @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..10,sort=random,limit=1] at @s run function asset:artifact/1680.pluvia/trigger/summon_object/random_rotate

# 敵がいなかったらランダムに落とす
    execute unless entity @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..10,limit=1] run function asset:artifact/1680.pluvia/trigger/summon_object/spread

# リセット
    tag @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..10] remove BoundingCylinder
