#> asset:artifact/1088.purifying_hydrangea/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1088.purifying_hydrangea/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $DebuffCount

# デバフを1つ解除
    data modify storage api: Argument.ClearLv set value 2
    data modify storage api: Argument.ClearType set value "bad"
    data modify storage api: Argument.IsSingle set value true
    function api:entity/mob/effect/remove/from_level
    function api:entity/mob/effect/reset

# 自身のデバフの数をチェック
    function api:entity/mob/effect/get/size/bad

#> Private
# @private
    #declare tag BuffTarget

# 自身にバフ対象のTagを付与する
    tag @s add BuffTarget

# 周囲の水攻撃補正が最も高いプレイヤーにTagを付与する
    execute if entity @p[tag=!BuffTarget,distance=..20] run function asset:artifact/1088.purifying_hydrangea/trigger/4.find_highest_water_attack_player

# バフ対象に演出
    execute at @a[tag=BuffTarget,distance=..20] run function asset:artifact/1088.purifying_hydrangea/trigger/vfx

# バフを付与する
    data modify storage api: Argument.ID set value 253
    execute as @a[tag=BuffTarget] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# Tag削除
    tag @a[tag=BuffTarget] remove BuffTarget

# リセット
    scoreboard players reset $DebuffCount Temporary
