#> asset:object/1053.flamethrower_ball/hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1053/hit

#> private
# @private
    #declare score_holder $UserID

# super
    function asset:object/super.method

# 演出
    particle flame ~ ~ ~ 0 0 0 0.2 8
    particle lava ~ ~ ~ 0 0 0 1 6

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-1.75 ~-1.75 ~-1.75 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=2.5,dy=2.5,dz=2.5,sort=random,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
