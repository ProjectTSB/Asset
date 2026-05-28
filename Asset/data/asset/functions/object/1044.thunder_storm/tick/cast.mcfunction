#> asset:object/1044.thunder_storm/tick/cast
#
#
#
# @within function asset:object/1044.thunder_storm/tick/

#> Private
# @private
    #declare score_holder $UserID

# vfx
    function asset:object/1044.thunder_storm/tick/vfx/cast

# playsound
    playsound entity.lightning_bolt.thunder player @a[distance=..32] ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder player @a[distance=..32] ~ ~ ~ 1 1.99
    playsound block.respawn_anchor.deplete player @a[distance=..32] ~ ~ ~ 1 0
    playsound block.respawn_anchor.deplete player @a[distance=..32] ~ ~ ~ 1 0.1
    playsound block.end_portal.spawn player @a[distance=..32] ~ ~ ~ 0.2 2 0.2

# ダメージ範囲
    data modify storage lib: Argument.BoundingCylinder.Radius set value 6.0d
    data modify storage lib: Argument.BoundingCylinder.Height set value 8.25d
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..15]"
    execute positioned ~ ~-2.25 ~ run function lib:bounding_cylinder/
# 補足：サンダーストームを特定のブロックに向けて発動させた場合、ブロックよりも少し上にオブジェクトが召喚されるため、0.25mの位置調整がなされている。
# 0.25m毎にブロックがあるかどうかの検知がなされているため、この処理になっている

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..15] run function api:damage/
    function api:damage/reset

# リセット
    tag @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..15] remove BoundingCylinder
    scoreboard players reset $UserID Temporary

# 消滅
    kill @s
