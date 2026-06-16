#> asset:artifact/0015.gasoline/melee/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0015.gasoline/melee/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# パーティクル
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..10] positioned ~ ~1 ~ run function asset:artifact/0015.gasoline/melee/particle

# 物理水属性ダメージ
    data modify storage api: Argument.Damage set value 40.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset
# デバフ付与
    data modify storage api: Argument.ID set value 372
    data modify storage api: Argument.Duration set value 200
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..10] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
