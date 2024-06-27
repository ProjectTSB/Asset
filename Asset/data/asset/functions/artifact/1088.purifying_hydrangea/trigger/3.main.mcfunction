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

# 演出
    function asset:artifact/1088.purifying_hydrangea/trigger/vfx

# デバフを1つ解除
    data modify storage api: Argument.ClearLv set value 2
    data modify storage api: Argument.ClearType set value "bad"
    data modify storage api: Argument.IsSingle set value true
    function api:entity/mob/effect/remove/from_level

# 自身のデバフの数をチェック
    function api:entity/mob/effect/get/size/bad

#> Private
# @private
    #declare tag BuffTarget

# 自身にバフ対象のTagを付与する
    tag @s add BuffTarget

# 周囲の水攻撃補正が最も高いプレイヤーにTagを付与する
    execute unless entity @p[tag=!BuffTarget,distance=..20] run function asset:artifact/1088.purifying_hydrangea/trigger/4.find_highest_water_attack_player

# バフを付与する
    execute as @a[tag=BuffTarget] at @s run function asset:artifact/1088.purifying_hydrangea/trigger/6.give_effect

# Tag削除
    tag @a[tag=BuffTarget] remove BuffTarget

# リセット
    scoreboard players reset $DebuffCount Temporary
