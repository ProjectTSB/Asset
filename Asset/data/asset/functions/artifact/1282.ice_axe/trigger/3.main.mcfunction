#> asset:artifact/1282.ice_axe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1282.ice_axe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..10] run function asset:artifact/1282.ice_axe/trigger/vfx

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 200..250
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset
