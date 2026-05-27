#> asset:object/1126.freeze_trap/tick/boom
#
#
#
# @within function asset:object/1126.freeze_trap/tick/

#> Private
# @private
    #declare tag 1126.Already
    #declare score_holder $UserID

# 1126.Alreadyがあればreturn
    execute if entity @s[tag=1126.Already] run return fail

# 1126.Alreadyを付与
    tag @s add 1126.Already

# 演出
    particle dust 0 1 1 1.2 ~ ~3 ~ 1.2 2 1.2 0 30 normal @a
    particle dust 0.7 1 1 1.2 ~ ~3 ~ 1.2 2 1.2 0 30 normal @a
    function asset:object/1126.freeze_trap/tick/vfx/boom
    playsound block.glass.break neutral @a ~ ~ ~ 0.7 0.6
    playsound block.glass.break neutral @a ~ ~ ~ 0.8 0.9
    playsound block.glass.break neutral @a ~ ~ ~ 0.8 1.0
    playsound block.glass.break neutral @a ~ ~ ~ 0.8 1.1
    playsound block.glass.break neutral @a ~ ~ ~ 0.8 1.2
    playsound ogg:mob.breeze.deflect3 neutral @a ~ ~ ~ 1.3 0.8
    playsound ogg:mob.breeze.deflect3 neutral @a ~ ~ ~ 1.3 0.9

# 鈍足
    effect give @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..4] slowness 3 2 true

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..4] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary

# 消滅
    execute on passengers run kill @s
    kill @s
