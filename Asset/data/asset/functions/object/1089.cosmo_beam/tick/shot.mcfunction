#> asset:object/1089.cosmo_beam/tick/shot
#
#
#
# @within function asset:object/1089.cosmo_beam/tick/

#> Private
# @private
#declare score_holder $UserID

# 演出
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
    particle explosion ~ ~4 ~ 3 4 3 0 5
    particle flash ~ ~4 ~ 3 4 3 0 5
    particle wax_off ~ ~5 ~ 4 10 4 0 100


# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Tunder"
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
# ダメージ
    execute positioned ~-8 ~-5 ~-8 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=16,dy=100,dz=16] run function api:damage/
# リセット
    function api:damage/reset
