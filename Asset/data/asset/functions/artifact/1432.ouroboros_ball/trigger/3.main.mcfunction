#> asset:artifact/1432.ouroboros_ball/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1432.ouroboros_ball/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 演出
    execute anchored eyes positioned ^ ^ ^0.5 run playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 1.0 0.8 0.0
    execute anchored eyes positioned ^ ^ ^0.5 run playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 1.0 0.65 0.0

# ここから先は神器側の効果の処理を書く

# 玉を発射(ダメージは8発連続で当てられれば４倍くらいになる。単体の敵に４回連続当て続けられたら強いくらいの感覚)
    data modify storage api: Argument.ID set value 1158
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    #ダメージ
    execute store result storage api: Argument.FieldOverride.Damage double 1 run random value 40..80
    #引継ぎダメージ保持時間
    data modify storage api: Argument.FieldOverride.Duration set value 50
    #引継ぎダメージ上限
    data modify storage api: Argument.FieldOverride.AdditionalDamageLimit set value 2000
    #反射回数上限
    data modify storage api: Argument.FieldOverride.ReflectionLimit set value 5
    #射程（Range*0.5m）
    data modify storage api: Argument.FieldOverride.Range set value 60

    execute anchored eyes positioned ^-0.2 ^-0.2 ^ run function api:object/summon
