#> asset:artifact/1661.starlight_circle/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1661.starlight_circle/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 適当に演出
    particle end_rod ~ ~0.2 ~ 0 0 0 0.3 30 normal @a
    particle dust 0.541 0.78 1 1 ~ ~1.2 ~ 3 1.2 3 0 40 normal @a
    playsound block.beacon.power_select player @a ~ ~ ~ 1 1.8
    playsound block.beacon.power_select player @a ~ ~ ~ 1 1.9
    playsound block.enchantment_table.use player @a ~ ~ ~ 1 1.75

# 演出用Object
    data modify storage api: Argument.ID set value 1200
    function api:object/summon

# ダメージ範囲
    data modify storage lib: Argument.BoundingCylinder.Radius set value 5.0d
    data modify storage lib: Argument.BoundingCylinder.Height set value 3.25d
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10]"
    execute positioned ~ ~-2.25 ~ run function lib:bounding_cylinder/

# ダメージ
    data modify storage api: Argument.Damage set value 200d
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute positioned ~ ~-0.25 ~ as @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..15] run function api:damage/
    function api:damage/reset

# リセット
    tag @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..15] remove BoundingCylinder
