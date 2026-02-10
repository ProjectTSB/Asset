#> asset:artifact/1361.unicorn_horn/trigger/as_target
#
#
#
# @within function asset:artifact/1361.unicorn_horn/trigger/3.main

#> Private
# @private
    #declare score_holder $Random

# 演出
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/1361.unicorn_horn/trigger/vfx

# 属性をランダムに指定する
    execute store result score $Random Temporary run random value 0..3
    execute if score $Random Temporary matches 0 run data modify storage api: Argument.ElementType set value "None"
    execute if score $Random Temporary matches 1 run data modify storage api: Argument.ElementType set value "Fire"
    execute if score $Random Temporary matches 2 run data modify storage api: Argument.ElementType set value "Water"
    execute if score $Random Temporary matches 3 run data modify storage api: Argument.ElementType set value "Thunder"

# 敵の属性耐性のみを無視するダメージ
    data modify storage api: Argument.Damage set value 1000f
    data modify storage api: Argument.AttackType set value "Magic"
    execute as @p[tag=this] run function api:damage/modifier
    data modify storage api: Argument.BypassModifier set value true
    function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Random Temporary
