#> asset:artifact/1462.ice_brand_arts_spear/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1462.ice_brand_arts_spear/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ターゲット指定
    execute at @s positioned ^ ^ ^1 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] add ICE_Hit
    execute at @s positioned ^ ^ ^2 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] add ICE_Hit
    execute at @s positioned ^ ^ ^3 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] add ICE_Hit
    execute at @s positioned ^ ^ ^4 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] add ICE_Hit
    execute at @s positioned ^ ^ ^5 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] add ICE_Hit
    execute at @s positioned ^ ^ ^6 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] add ICE_Hit
    execute at @s positioned ^ ^ ^8 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] add ICE_Hit
    execute at @s positioned ^ ^ ^9 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] add ICE_Hit
    execute at @s positioned ^ ^ ^10 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] add ICE_Hit
    
    
#アイシクルライン処理
    execute if entity @s run data modify storage api: Argument.ID set value 365
    execute if entity @s run function api:entity/mob/effect/get/from_id
    execute if entity @s if data storage api: Return.Effect run data modify storage api: Argument.Fluctuation set value 30
    execute if entity @s if data storage api: Return.Effect run function api:mp/fluctuation

# 攻撃時演出
    execute as @e[type=#lib:living_without_player,tag=ICE_Hit,tag=!Uninterferable,distance=..10.5] at @s run particle block ice ~ ~ ~ 1 1 1 0 100
    execute as @s at @s run playsound block.glass.break master @a ~ ~ ~ 0.7 1.2
    execute as @s at @s run playsound item.trident.riptide_1 master @a ~ ~ ~ 0.4 1.4
    execute as @s at @s run playsound item.trident.throw master @a ~ ~ ~ 1 1
    function asset:artifact/1462.ice_brand_arts_spear/trigger/yari
# 引数を set
    data modify storage api: Argument.Damage set value 400f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    function api:damage/modifier
# 実行(攻撃対象にダメージ)
    execute as @e[type=#lib:living_without_player,tag=ICE_Hit,tag=!Uninterferable,distance=..10.5] run function api:damage/
# リセット
    function api:damage/reset
    tag @e[type=#lib:living_without_player,tag=ICE_Hit,tag=!Uninterferable,distance=..10.5] remove ICE_Hit
