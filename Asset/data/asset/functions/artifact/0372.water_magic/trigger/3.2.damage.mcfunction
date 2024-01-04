#> asset:artifact/0372.water_magic/trigger/3.2.damage
#
#
#
# @within function asset:artifact/0372.water_magic/trigger/3.1.loop

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20f
    # 属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
    # 補正function
        execute at @a if score @s AC.UserID = @p UserID run function lib:damage/modifier
    # 対象に
        execute as @e[type=#lib:living,tag=Enemy,distance=..5] run function lib:damage/

# 演出
    execute at @e[type=#lib:living,tag=Enemy,distance=..5] run particle minecraft:block water ~ ~1 ~ 0.1 1.3 0.1 10 30
    playsound entity.dolphin.splash player @a ~ ~ ~ 1 2
    playsound entity.dolphin.splash player @a ~ ~ ~ 1 1
    playsound entity.dolphin.splash player @a ~ ~ ~ 1 0

# リセット
    function lib:damage/reset