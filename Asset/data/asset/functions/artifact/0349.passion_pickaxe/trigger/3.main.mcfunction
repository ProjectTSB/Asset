#> asset:artifact/0349.passion_pickaxe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0349.passion_pickaxe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# ダメージ
    data modify storage api: Argument.Damage set value 320f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

# 自身にマインソウル(ID:291)を付与
    data modify storage api: Argument.ID set value 291
    data modify storage api: Argument.Duration set value 1200
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    particle minecraft:lava ~ ~ ~ 0.5 1 0.5 1 100 force @a[distance=..20]
    playsound minecraft:entity.ghast.shoot player @s ~ ~ ~ 1 0.7
