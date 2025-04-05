#> asset:object/1041.grand_flame/tick/landing
#
#
#
# @within function asset:object/1041.grand_flame/tick/

#> Private
# @private
    #declare tag 1041.Already
    #declare score_holder $UserID

# 1度しか実行されないように
    execute if entity @s[tag=1041.Already] run return fail
    tag @s add 1041.Already

# playsound
    playsound entity.wither.shoot player @a[distance=..32] ~ ~ ~ 2 0.6
    playsound entity.generic.explode player @a[distance=..32] ~ ~ ~ 2 1

# 演出(球体)
    function asset:object/1041.grand_flame/tick/vfx/landing/

# 演出(ランダム) x3
    execute store result storage asset:temp Args.Yaw float 0.01 run random value 0..35999
    execute store result storage asset:temp Args.Pitch float 0.01 run random value 0..35999
    function asset:object/1041.grand_flame/tick/vfx/landing/random.m with storage asset:temp Args

    execute store result storage asset:temp Args.Yaw float 0.01 run random value 0..35999
    execute store result storage asset:temp Args.Pitch float 0.01 run random value 0..35999
    function asset:object/1041.grand_flame/tick/vfx/landing/random.m with storage asset:temp Args

    execute store result storage asset:temp Args.Yaw float 0.01 run random value 0..35999
    execute store result storage asset:temp Args.Pitch float 0.01 run random value 0..35999
    function asset:object/1041.grand_flame/tick/vfx/landing/random.m with storage asset:temp Args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..5] run function api:damage/
    function api:damage/reset

# リセット
    data remove storage asset:temp Args
    scoreboard players reset $UserID Temporary

# 消滅
    execute on vehicle run kill @s
    kill @s
