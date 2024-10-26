#> asset:object/1053.flamethrower_ball/tick/hit
#
#
#
# @within function asset:object/1053.flamethrower_ball/tick/

#> private
# @private
    #declare score_holder $OwnerID

# 演出
    particle flame ~ ~ ~ 0 0 0 0.2 8
    particle lava ~ ~ ~ 0 0 0 1 6

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 130.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
        execute at @a if score $OwnerID Temporary = @p UserID as @p run function lib:damage/modifier
        execute positioned ~-1.75 ~-1.75 ~-1.75 as @e[type=#lib:living,tag=Enemy,dx=2.5,dy=2.5,dz=2.5] run function api:damage/
# リセット
    function lib:damage/reset
    scoreboard players reset $OwnerID Temporary

kill @s
