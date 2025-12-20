#> asset:object/1022.shaking_bullet/hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1022/hit

#> Private
# @private
    #declare score_holder $UserID

# 演出
    playsound block.fire.extinguish neutral @a ~ ~ ~ 0.3 1.5 0
    playsound block.bubble_column.upwards_ambient neutral @a ~ ~ ~ 0.8 2 0
    playsound block.bubble_column.upwards_ambient neutral @a ~ ~ ~ 0.8 0.5 0
    playsound block.bubble_column.upwards_ambient neutral @a ~ ~ ~ 0.8 1 0
    particle dust 0.8 500000000 1000000000 2 ~ ~ ~ 1 1 1 0 20
    particle dolphin ~ ~ ~ 1 1 1 0 80
    particle firework ~ ~ ~ 0.3 0.3 0.3 0.25 20

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-1.75 ~-1.75 ~-1.75 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=2.5,dy=2.5,dz=2.5] run function api:damage/
    function api:damage/reset

# ついでに火を消す
    execute if predicate api:area/is_breakable run fill ~2.5 ~2.5 ~2.5 ~-2.5 ~-2.5 ~-2.5 air replace fire

# super
    function asset:object/super.method

# リセット
    scoreboard players reset $UserID Temporary
