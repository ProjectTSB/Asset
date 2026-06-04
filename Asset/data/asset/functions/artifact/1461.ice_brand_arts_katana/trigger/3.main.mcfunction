#> asset:artifact/1461.ice_brand_arts_katana/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1461.ice_brand_arts_katana/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ターゲット指定
    tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..5.5] add ICE_Hit
    execute as @e[type=#lib:living_without_player,tag=ICE_Hit,tag=!Uninterferable,distance=..5.5] positioned ^ ^ ^-100 run tag @s[type=#lib:living_without_player,tag=ICE_Hit,tag=!Uninterferable,distance=..100] remove ICE_Hit

# 攻撃時演出
    execute as @e[type=#lib:living_without_player,tag=ICE_Hit,tag=!Uninterferable,distance=..5.5] at @s run particle block ice ~ ~ ~ 1 1 1 0 100
    execute as @s at @s run playsound block.glass.break master @a ~ ~ ~ 0.7 1.2
    execute as @s at @s run playsound item.trident.throw master @a ~ ~ ~ 1 1
    function asset:artifact/1461.ice_brand_arts_katana/trigger/zangeki
# 引数を set
    data modify storage api: Argument.Damage set value 400f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    function api:damage/modifier
# 実行(攻撃対象にダメージ)
    execute as @e[type=#lib:living_without_player,tag=ICE_Hit,tag=!Uninterferable,distance=..5.5] run function api:damage/
# リセット
    function api:damage/reset
    tag @e[type=#lib:living_without_player,tag=ICE_Hit,tag=!Uninterferable,distance=..5.5] remove ICE_Hit
