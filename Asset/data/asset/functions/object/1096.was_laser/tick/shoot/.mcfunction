#> asset:object/1096.was_laser/tick/shoot/
#
#
#
# @within function asset:object/1096.was_laser/tick/

#> Private
# @private
    #declare score_holder $UserID

# 再帰による演出 & 進行可能な距離をレイで計測
    function asset:object/1096.was_laser/tick/shoot/ray

# 演出
    particle minecraft:dust 0 1 1 2 ~ ~ ~ 0.7 0.7 0.7 0 100
    playsound minecraft:entity.warden.sonic_boom neutral @a ~ ~ ~ 0.7 1.8
    playsound ogg:block.respawn_anchor.deplete2 neutral @a ~ ~ ~ 0.7 1
    playsound minecraft:entity.breeze.death neutral @a ~ ~ ~ 0.7 0.7

# $Rangeによって出すvfxの数を調整する
    execute if score $Range Temporary matches 5.. run function asset:object/1096.was_laser/tick/shoot/vfx/1
    execute if score $Range Temporary matches 10.. run function asset:object/1096.was_laser/tick/shoot/vfx/2
    execute if score $Range Temporary matches 15.. run function asset:object/1096.was_laser/tick/shoot/vfx/3
    execute if score $Range Temporary matches 20.. run function asset:object/1096.was_laser/tick/shoot/vfx/4
    execute if score $Range Temporary matches 25.. run function asset:object/1096.was_laser/tick/shoot/vfx/5

# レーザー演出用Object召喚
# Scale[1]に$Rangeからそのまま代入する
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[7f,0f,7f],Color:9763071,DisappearInterpolation:3,LifeTime:15}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get $Range Temporary
    function api:object/summon

# 立方体範囲内の敵にtag付け
# dzに$Rangeの半分を代入する
    data modify storage lib: args.dx set value 2.5
    data modify storage lib: args.dy set value 2.5
    execute store result storage lib: args.dz float 0.5 run scoreboard players get $Range Temporary
    data modify storage lib: args.selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..40]"

# マクロでRotatableDXYZの実行位置を調整する
    execute store result storage asset:temp Args.Pos float 0.5 run scoreboard players get $Range Temporary
    function asset:object/1096.was_laser/tick/shoot/hit_check_pos.m with storage asset:temp Args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=DXYZ,tag=!Uninterferable,distance=..40] run function api:damage/
    function api:damage/reset

# リセット
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=DXYZ,distance=..40] remove DXYZ
    scoreboard players reset $Range Temporary
    scoreboard players reset $UserID Temporary
    data remove storage asset:temp Args
