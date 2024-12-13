#> asset:artifact/0369.fire_magic/trigger/3.3.attack
#
# 弾が着弾した時
#
# @within function asset:artifact/0369.fire_magic/trigger/3.2.fireball

# 自身にタグ付与
    tag @s add A9.This

# 演出
    particle lava ~ ~1 ~ 0.1 1 0.1 0 20 force
    particle flame ~ ~ ~ 0.2 0.2 0.2 0.3 20 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound entity.generic.explode neutral @a ~ ~ ~ 1 1
    playsound entity.generic.explode neutral @a ~ ~ ~ 1 0
    playsound entity.blaze.burn neutral @a ~ ~ ~ 1 1

# 攻撃を与える
    # 与えるダメージ = 100
        data modify storage lib: Argument.Damage set value 60f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    execute as @a if score @s UserID = @e[type=area_effect_cloud,tag=A9.This,limit=1] A9.UserID run function lib:damage/modifier
# 攻撃した対象に実行
    execute positioned ~-1 ~0.5 ~-1 as @e[type=#lib:living,type=!player,tag=!A9.Fire,dx=1,dy=2.5,dz=1] run function lib:damage/
# リセット
    function lib:damage/reset

#自身を殺す
    kill @s
