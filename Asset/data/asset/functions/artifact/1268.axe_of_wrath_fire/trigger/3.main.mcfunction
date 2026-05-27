#> asset:artifact/1268.axe_of_wrath_fire/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1268.axe_of_wrath_fire/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned as @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run function asset:artifact/1268.axe_of_wrath_fire/trigger/vfx/
    playsound item.totem.use player @a ~ ~ ~ 0.9 0.8
    playsound entity.blaze.ambient player @a ~ ~ ~ 0.8 0.5
    playsound entity.blaze.shoot player @a ~ ~ ~ 0.8 0.50
    playsound entity.blaze.shoot player @a ~ ~ ~ 0.8 0.55
    playsound entity.blaze.shoot player @a ~ ~ ~ 0.8 0.60

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 3100..3500
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset
