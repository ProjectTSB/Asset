#> asset:artifact/1088.purifying_hydrangea/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1088.purifying_hydrangea/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 確率でデバフを1つ解除
    execute unless predicate lib:weather/is_raining unless predicate lib:weather/is_thundering if predicate lib:random_pass_per/30 run function asset:artifact/1088.purifying_hydrangea/trigger/remove_debuff
    execute if predicate lib:weather/is_raining if predicate lib:random_pass_per/50 run function asset:artifact/1088.purifying_hydrangea/trigger/remove_debuff
    execute if predicate lib:weather/is_thundering unless predicate lib:dimension/is_end if predicate lib:random_pass_per/50 run function asset:artifact/1088.purifying_hydrangea/trigger/remove_debuff

# 自身にバフ対象のTagを付与する
    tag @s add BuffTarget

# 周囲の水攻撃補正が最も高いプレイヤーにTagを付与する
    execute if entity @p[tag=!BuffTarget,distance=..20] run function asset:artifact/1088.purifying_hydrangea/trigger/4.find_target

# バフ対象に演出
    execute at @a[tag=BuffTarget,distance=..20] run function asset:artifact/1088.purifying_hydrangea/trigger/vfx

# 天候が雨または雷雨ならバフのStackを2に設定
    execute if predicate lib:weather/is_raining run data modify storage api: Argument.Stack set value 2
    execute if predicate lib:weather/is_thundering run data modify storage api: Argument.Stack set value 2

# バフを付与する
    data modify storage api: Argument.ID set value 253
    execute as @a[tag=BuffTarget] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# Tag削除
    tag @a[tag=BuffTarget] remove BuffTarget

# リセット
    scoreboard players reset @s U8.HealSum
