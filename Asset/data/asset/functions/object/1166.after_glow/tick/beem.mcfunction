#> asset:object/1166.after_glow/tick/beem
#
# Objectのビームの攻撃処理
#
# @within asset:object/1166.after_glow/tick/
#> Private
# @private
    #declare score_holder $UserID

# ビーム召喚(真上向く)
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Color:16711680,Scale:[2f,100f,2f],Frames:[20335,20336,20337]}
    execute rotated ~ ~-90 run function api:object/summon
# 音
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2.0 0.6
    playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 2.0 1.5
    playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 2.0 0.6
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 2 1.4

# 半径1高さ100の円柱型範囲内
    data modify storage lib: Argument.BoundingCylinder.Radius set value 1
    data modify storage lib: Argument.BoundingCylinder.Height set value 101
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable]"
    execute positioned ~ ~-1 ~ run function lib:bounding_cylinder/
# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=BoundingCylinder,tag=!Uninterferable] run function api:damage/
    function api:damage/reset
    scoreboard players reset $UserID Temporary
    # tagリセット
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=BoundingCylinder,tag=!Uninterferable] remove BoundingCylinder
    kill @s
