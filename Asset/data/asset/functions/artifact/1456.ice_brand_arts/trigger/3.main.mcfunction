#> asset:artifact/1456.ice_brand_arts/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1456.ice_brand_arts/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
# アイシクルライン付与
    data modify storage api: Argument.ID set value 365
    data modify storage api: Argument.Duration set value 600
    execute store result storage api: Argument.FieldOverride.Time int 1 run data get storage global Time
    # data modify storage api: Argument.Stack set value <スタック数>      # オプション
    # data modify storage api: Argument.DurationOperation set value "replace"   # オプション
    # data modify storage api: Argument.StackOperation set value "replace"      # オプション
    # data modify storage api: Argument.FieldOverride set value {…}      # オプション
    execute at @s as @a[distance=..10] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset



# 0〜3の乱数を生成し、ストレージの[type]に保存
    execute store result storage asset:temp type int 1 run random value 0..3
# 管理用オブジェクト召喚
    data modify storage api: Argument.ID set value 1193
    function api:object/summon
# 生成音

# 乱数（0〜3）に応じて、基準の向きを東西南北に変えて展開functionを呼び出す
    execute if data storage asset:temp {type:0} at @s rotated 0 0 run function api:object/summon
    execute if data storage asset:temp {type:1} at @s rotated 90 0 run function api:object/summon
    execute if data storage asset:temp {type:2} at @s rotated 180 0 run function api:object/summon
    execute if data storage asset:temp {type:3} at @s rotated -90 0 run function api:object/summon
    data remove storage asset:temp type
