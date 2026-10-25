#> asset:artifact/1623.palermo/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1623.palermo/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# MetaData設定
    data modify storage api: Argument.Metadata set value "1623.palermo"

# 固有バフ取得
    data modify storage api: Argument.ID set value 410
    function api:entity/mob/effect/get/from_id

# 演出
    execute anchored eyes positioned ^ ^ ^1.5 positioned ~ ~-0.6 ~ run function asset:artifact/1623.palermo/trigger/vfx

# ダメージ
    execute store result storage api: Argument.Damage float 1.0 run random value 300..500

#バフがあるならダメ―ジX倍
    execute if data storage api: Return.Effect store result storage api: Argument.Damage double 1.5 run data get storage api: Argument.Damage

# スタックを上書きして再付与する
    data modify storage api: Argument.ID set value 410
    execute store result storage api: Argument.Stack int 1 run data get storage api: Return.Effect.Stack 0.9999999999
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# その他設定
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

#リセット
    data remove storage asset:temp Success
