#> asset:artifact/1273.maidchan_plush/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1273.maidchan_plush/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..6,sort=nearest,limit=1] positioned ~ ~1 ~ run function asset:artifact/1273.maidchan_plush/trigger/vfx

# 敵にダメージ
    data modify storage api: Argument.Damage set value 90.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..6,sort=nearest,limit=1] run function api:damage/
# リセット
    function api:damage/reset
