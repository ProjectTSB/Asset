#> asset:artifact/0730.lake_reflecting_starry_sky/click/lake/damage
#
# ダメージ処理
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/click/lake/main

# 演出
    playsound entity.dolphin.jump neutral @a ~ ~ ~ 0.05 0.6 0

# ダメージ
    data modify storage api: Argument.Damage set value 200f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
# 補正
    execute at @a[distance=..160] if score @s KA.UserID = @p UserID as @p run function api:damage/modifier
# 実行
    execute as @e[type=#lib:living,tag=Enemy,tag=Target,tag=!Uninterferable,distance=..7.5] run function api:damage/
# リセット
    function api:damage/reset

# Targetを消す
    tag @e[type=#lib:living,tag=Target,distance=..7.5] remove Target
