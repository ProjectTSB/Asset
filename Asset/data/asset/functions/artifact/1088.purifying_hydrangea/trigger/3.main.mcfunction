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

# デバフの数が0ならバフを付与
# デバフが解除されるのは1tick後のためスコアで(デバフ数-1)して判定する
    execute store result score $DebuffCount Temporary run data get storage api: Return.EffectSize.Bad
    scoreboard players remove $DebuffCount Temporary 1
    execute if score $DebuffCount Temporary matches ..0 run function asset:artifact/1088.purifying_hydrangea/trigger/4.set_effect_target

# リセット
    scoreboard players reset $DebuffCount Temporary
