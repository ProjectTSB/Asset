#> asset:object/1049.lexiel_rod_fireball/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1049/kill

#> private
# @private
    #declare score_holder $OwnerID

# 演出
    function asset:object/1049.lexiel_rod_fireball/kill/vfx

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 250.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
        execute at @a if score $OwnerID Temporary = @p UserID as @p run function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..3] run function lib:damage/
# リセット
    function lib:damage/reset
    scoreboard players reset $OwnerID Temporary

# キル
    kill @s
