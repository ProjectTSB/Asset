#> asset:artifact/0122.lunatic_lay/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0122.lunatic_lay/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う mainhand/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# 演出
    execute at @e[type=#lib:living,type=!player,tag=3E.Hit,distance=..5] run function asset:artifact/0122.lunatic_lay/trigger/vfx
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
# ダメージ
    data modify storage api: Argument.Damage set value 110.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=3E.Hit,distance=..5] run function api:damage/
# リセット
    function api:damage/reset
