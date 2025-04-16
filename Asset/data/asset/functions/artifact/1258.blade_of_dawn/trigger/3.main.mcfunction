#> asset:artifact/1258.blade_of_dawn/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1258.blade_of_dawn/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound item.trident.throw player @a ~ ~ ~ 0.55 0.5 0
    playsound entity.glow_squid.squirt player @a ~ ~ ~ 0.55 2 0

# 演出用Objectを召喚
    data modify storage api: Argument.ID set value 1127
    execute store result storage api: Argument.FieldOverride.Count int 1 run random value 1..3
    execute anchored eyes positioned ^ ^-0.4 ^1 run function api:object/summon

# ダメージ
    function api:damage/single_damage_session/open
    execute as @e[type=#lib:living,tag=Victim,distance=..6,sort=random] run function asset:artifact/1258.blade_of_dawn/trigger/damage
    function api:damage/single_damage_session/close
