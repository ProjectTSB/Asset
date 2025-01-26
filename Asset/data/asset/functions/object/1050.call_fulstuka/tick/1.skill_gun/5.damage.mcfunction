#> asset:object/1050.call_fulstuka/tick/1.skill_gun/5.damage
#
# ダメージを与えます
#
# @within function asset:object/1050.call_fulstuka/tick/1.skill_gun/4.shot

#> private
# @private
    #declare score_holder $OwnerID

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 90f
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # 補正を無視する
        # data modify storage lib: Argument.BypassModifier set value true
    # ダメージ
        execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
        execute at @a if score $OwnerID Temporary = @p UserID as @p run function lib:damage/modifier
        # data modify storage lib: Argument.BypassModifier set value false
        execute as @e[type=#lib:living,tag=LandingTarget,tag=Enemy,tag=!Uninterferable,distance=..30] at @s run function lib:damage/
# リセット
    scoreboard players reset $OwnerID Temporary
    function lib:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living,tag=LandingTarget,tag=Enemy,tag=!Uninterferable,distance=..30] remove LandingTarget
