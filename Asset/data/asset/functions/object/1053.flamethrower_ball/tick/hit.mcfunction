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
        data modify storage api: Argument.Damage set value 112.0f
    # 物理属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 属性
        data modify storage api: Argument.ElementType set value "Fire"
    # ダメージ
        execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
        execute at @a if score $OwnerID Temporary = @p UserID as @p run function api:damage/modifier
        execute positioned ~-1.75 ~-1.75 ~-1.75 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=2.5,dy=2.5,dz=2.5] run function api:damage/
# リセット
    function api:damage/reset
    scoreboard players reset $OwnerID Temporary

kill @s
