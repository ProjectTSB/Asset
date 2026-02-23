#> asset:object/1061.azure_jelly/tick/attack/attack
#
#
#
# @within function asset:object/1061.azure_jelly/tick/attack/

# 演出
    execute rotated ~ 0 positioned ~ ~-0.3 ~ run function asset:object/1061.azure_jelly/tick/vfx/circle1
    execute rotated ~ 0 positioned ~ ~-0.3 ~ run function asset:object/1061.azure_jelly/tick/vfx/circle2

# 波Objectの演出
    function asset:object/1061.azure_jelly/tick/attack/summon_wave/

# 円柱Libを用いて判定する
    data modify storage lib: Argument.BoundingCylinder.Radius set value 4.5d
    data modify storage lib: Argument.BoundingCylinder.Height set value 10.0d
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..7]"
    execute positioned ~ ~-5 ~ run function lib:bounding_cylinder/

# 壁貫通していない敵にダメージ
    function api:damage/single_damage_session/open
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=BoundingCylinder,tag=!Uninterferable,distance=..7] if function asset:object/1061.azure_jelly/tick/attack/check_block/ run function asset:object/1061.azure_jelly/tick/attack/damage.m with storage asset:context this.Damage
    function api:damage/single_damage_session/close

# リセット
    tag @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..7] remove BoundingCylinder

# AttackCD初期化
    data modify storage asset:context this.AttackCD.Current set from storage asset:context this.AttackCD._
