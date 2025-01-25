#> asset:artifact/0122.lunatic_lay/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/122/click/

# 演出
    execute at @e[type=#lib:living,type=!player,tag=3E.Hit,distance=..5] run function asset:artifact/0122.lunatic_lay/click/vfx
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
# ダメージ
    data modify storage api: Argument.Damage set value 100.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=3E.Hit,distance=..5] run function api:damage/
# リセット
    function api:damage/reset
