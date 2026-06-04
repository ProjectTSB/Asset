#> asset:artifact/1457.ice_brand_arts_axe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1457.ice_brand_arts_axe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く


# 攻撃時演出
    execute as @e[type=#lib:living,tag=Victim,distance=..6] at @s run particle block ice ~ ~ ~ 1 1 1 0 100
    execute as @e[type=#lib:living,tag=Victim,distance=..6] at @s run playsound block.glass.break master @a ~ ~ ~ 1.2 0.7
    execute as @e[type=#lib:living,tag=Victim,distance=..6] at @s run playsound entity.zombie.attack_iron_door master @a ~ ~ ~ 0.4 0.7

# 引数を set
    data modify storage api: Argument.Damage set value 1000f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    function api:damage/modifier
# 実行(攻撃対象にダメージ)
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/
# リセット
    function api:damage/reset
