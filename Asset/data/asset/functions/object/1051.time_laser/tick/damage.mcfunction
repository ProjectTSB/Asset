#> asset:object/1051.time_laser/tick/damage
#
#
#
# @within function asset:object/1051.time_laser/tick/loop

#> private
# @private
    #declare score_holder $OwnerID

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 25
    # 属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
        execute at @a if score $OwnerID Temporary = @p UserID as @p run function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,tag=LandingTarget,sort=nearest] run function lib:damage/
# リセット
    scoreboard players reset $OwnerID Temporary
    function lib:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,tag=LandingTarget,sort=nearest] remove LandingTarget
