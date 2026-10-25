#> asset:object/1050.call_fulstuka/tick/2.skill_melee/3.slash
#
#
#
# @within function asset:object/1050.call_fulstuka/tick/2.skill_melee/1.skill_melee

#> private
# @private
    #declare score_holder $OwnerID

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 260.0f
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # 補正を無視する
        # data modify storage api: Argument.BypassModifier set value true
    # ダメージ
        execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
        execute at @a if score $OwnerID Temporary = @p UserID as @p run function api:damage/modifier
        # data modify storage api: Argument.BypassModifier set value false
        execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..2] at @s run function api:damage/
# リセット
    scoreboard players reset $OwnerID Temporary
    function api:damage/reset

# 演出
    playsound minecraft:item.trident.return neutral @a ~ ~ ~ 1 2
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..2] at @s run particle dust 1 0 0.749 2 ~ ~1 ~ 0.6 0.6 0.6 0 50 normal @a
