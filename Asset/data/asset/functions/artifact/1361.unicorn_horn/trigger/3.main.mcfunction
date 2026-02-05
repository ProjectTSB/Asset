#> asset:artifact/1361.unicorn_horn/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1361.unicorn_horn/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare tag Target
    #declare score_holder $Random

# check_conditionで判定したTempTargetの中で最も近い対象を攻撃対象とする

# Victimのうちランダムな対象1体を指定
    tag @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..64,sort=random,limit=1] add Target

# 演出
    execute as @e[type=#lib:living_without_player,tag=Target,distance=..64,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ run function asset:artifact/1361.unicorn_horn/trigger/vfx

# 属性をランダムに指定する
    execute store result score $Random Temporary run random value 0..3
    execute if score $Random Temporary matches 0 run data modify storage api: Argument.ElementType set value "None"
    execute if score $Random Temporary matches 1 run data modify storage api: Argument.ElementType set value "Fire"
    execute if score $Random Temporary matches 2 run data modify storage api: Argument.ElementType set value "Water"
    execute if score $Random Temporary matches 3 run data modify storage api: Argument.ElementType set value "Thunder"

# 敵の属性耐性のみを無視するダメージ
    data modify storage api: Argument.Damage set value 1000f
    data modify storage api: Argument.AttackType set value "Magic"
    function api:damage/modifier
    data modify storage api: Argument.BypassModifier set value true
    execute as @e[type=#lib:living_without_player,tag=Target,distance=..64,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Random Temporary
    tag @e[type=#lib:living_without_player,tag=Target,distance=..64,sort=nearest,limit=1] remove Target
