#> asset:object/1166.after_glow/tick/beem
#
# Objectのビームの攻撃処理
#
# @within asset:object/1166.after_glow/tick/check
#> Private
# @private
    #declare score_holder $UserID

# 円形用tagを持ってきてしまうのでリセット
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=BoundingCylinder,tag=!Uninterferable,distance=..128] remove BoundingCylinder

# 演出呼び出し
    function asset:object/1166.after_glow/tick/vfx/beem
    function asset:object/1166.after_glow/tick/vfx/boom

# 直撃ダメージ
# 半径1高さ5の円柱型範囲内
    data modify storage lib: Argument.BoundingCylinder.Radius set value 1
    data modify storage lib: Argument.BoundingCylinder.Height set value 6
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..128]"
    execute positioned ~ ~-1 ~ run function lib:bounding_cylinder/

# 直撃時の効果音
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=BoundingCylinder,tag=!Uninterferable,distance=..128] run function asset:object/1166.after_glow/tick/vfx/direct

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Directdamage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=BoundingCylinder,tag=!Uninterferable,distance=..128] run function api:damage/
    function api:damage/reset
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=BoundingCylinder,tag=!Uninterferable,distance=..128] remove BoundingCylinder

# 爆風ダメージ
# 半径2.5高さ5の円柱型範囲内
    data modify storage lib: Argument.BoundingCylinder.Radius set value 2.5
    data modify storage lib: Argument.BoundingCylinder.Height set value 6
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..128]"
    execute positioned ~ ~-1 ~ run function lib:bounding_cylinder/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=BoundingCylinder,tag=!Uninterferable,distance=..128] run function api:damage/
    function api:damage/reset
    scoreboard players reset $UserID Temporary

# tagリセット
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=BoundingCylinder,tag=!Uninterferable,distance=..128] remove BoundingCylinder

# 片づけ
    kill @s
