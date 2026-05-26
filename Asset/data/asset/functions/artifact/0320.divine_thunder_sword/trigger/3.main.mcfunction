#> asset:artifact/0320.divine_thunder_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0320.divine_thunder_sword/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..10] rotated ~ 0 run function asset:artifact/0320.divine_thunder_sword/trigger/3.1.particle
    playsound item.trident.throw player @a ~ ~ ~ 1 1

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 45..80
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset
