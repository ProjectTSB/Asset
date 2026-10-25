#> asset:object/1041.grand_flame/hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1041/hit

#> Private
# @private
    #declare score_holder $UserID

# super
    function asset:object/super.method

# playsound
    playsound entity.wither.shoot player @a[distance=..32] ~ ~ ~ 2 0.6
    playsound entity.generic.explode player @a[distance=..32] ~ ~ ~ 2 1

# 演出(球体)
    function asset:object/1041.grand_flame/hit/vfx/

# 演出(ランダム) x3
    execute store result storage asset:temp Args.Yaw float 0.01 run random value 0..35999
    execute store result storage asset:temp Args.Pitch float 0.01 run random value 0..35999
    function asset:object/1041.grand_flame/hit/vfx/random.m with storage asset:temp Args

    execute store result storage asset:temp Args.Yaw float 0.01 run random value 0..35999
    execute store result storage asset:temp Args.Pitch float 0.01 run random value 0..35999
    function asset:object/1041.grand_flame/hit/vfx/random.m with storage asset:temp Args

    execute store result storage asset:temp Args.Yaw float 0.01 run random value 0..35999
    execute store result storage asset:temp Args.Pitch float 0.01 run random value 0..35999
    function asset:object/1041.grand_flame/hit/vfx/random.m with storage asset:temp Args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..5] run function api:damage/
    function api:damage/reset

# リセット
    data remove storage asset:temp Args
    scoreboard players reset $UserID Temporary
