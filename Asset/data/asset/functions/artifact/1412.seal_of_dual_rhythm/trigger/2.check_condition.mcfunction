#> asset:artifact/1412.seal_of_dual_rhythm/trigger/2.check_condition
#
# @within function asset:artifact/1412.seal_of_dual_rhythm/trigger/1.trigger

# 神器の基本的な発動条件を確認する
    function asset:artifact/common/check_condition/offhand

# 死亡中・スペクテイター中は発動しない
    execute if entity @s[tag=Death] run tag @s remove CanUsed
    execute if entity @s[gamemode=spectator] run tag @s remove CanUsed

# クールダウン中は軽減バフを再付与しない
# 装備を外してもEffectは残り、本体のEffect tickで残り時間が減る
    data modify storage api: Argument.ID set value 401
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run tag @s remove CanUsed

# 軽減バフが存在する間は付与し直さない
    data modify storage api: Argument.ID set value 399
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run tag @s remove CanUsed

# 発動条件を満たしていれば効果を処理する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1412.seal_of_dual_rhythm/trigger/3.main
