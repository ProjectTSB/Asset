#> asset:artifact/0073.suzuran_charm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0073.suzuran_charm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:smoke ~ ~ ~ 1 1 1 0.0001 500 normal @a[distance=..30]
    playsound minecraft:entity.splash_potion.break player @a[distance=..30] ~ ~ ~ 1 0.5

# 物理無属性ダメージ
    data modify storage api: Argument.Damage set value 50.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
# リセット
    function api:damage/reset

# 敵にコンバラトキシンを付与
    data modify storage api: Argument.ID set value 205
    data modify storage api: Argument.FieldOverride.Damage set value 25
    execute store result storage api: Argument.FieldOverride.AppliedFrom int 1 run scoreboard players get @s UserID
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
