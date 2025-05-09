#> asset:artifact/0534.all_night_helmet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0534.all_night_helmet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.drowned.death_water player @a ~ ~ ~ 1 0.8
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:squid_ink ~ ~1 ~ 0.4 0.4 0.4 0.03 30

# ダメージ
    data modify storage api: Argument.Damage set value 15.0f
    data modify storage api: Argument.AttackType set value "Magic"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

# 回復
    data modify storage api: Argument.Heal set value 2f
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
