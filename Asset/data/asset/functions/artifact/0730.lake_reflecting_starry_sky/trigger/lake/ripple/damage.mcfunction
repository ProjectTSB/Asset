#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/damage
#
# ダメージと演出
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/main

# 演出
    execute positioned ~ ~0.4 ~ run function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/vfx
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1.2 0.7 0

# ダメージ
    data modify storage api: Argument.Damage set value 320f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
# 補正
    execute at @a[distance=..160] if score @s KA.UserID = @p UserID as @p run function api:damage/modifier
# 実行
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run function api:damage/
# リセット
    function api:damage/reset

# 消滅
    kill @s
