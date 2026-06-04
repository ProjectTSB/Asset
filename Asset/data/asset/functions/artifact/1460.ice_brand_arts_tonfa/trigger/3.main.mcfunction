#> asset:artifact/1460.ice_brand_arts_tonfa/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1460.ice_brand_arts_tonfa/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 攻撃時演出
    execute as @e[type=#lib:living,tag=Victim,distance=..6] at @s run particle block ice ~ ~ ~ 0.7 0.7 0.7 0 70
    #execute as @e[type=#lib:living,tag=Victim,distance=..6] at @s run particle sweep_attack ~ ~1 ~
    execute as @e[type=#lib:living,tag=Victim,distance=..6] at @s run playsound block.glass.break master @a ~ ~ ~ 0.7 1.7
    execute as @e[type=#lib:living,tag=Victim,distance=..6] at @s run playsound entity.egg.throw master @a ~ ~ ~ 1 0.6
    execute as @e[type=#lib:living,tag=Victim,distance=..6] at @s run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.7 0.8

# 引数を set
    data modify storage api: Argument.Damage set value 200f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    function api:damage/modifier
# 実行(攻撃対象にダメージ)
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/
# リセット
    function api:damage/reset
