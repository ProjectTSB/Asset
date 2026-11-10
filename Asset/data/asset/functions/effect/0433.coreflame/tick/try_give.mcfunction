#> asset:effect/0433.coreflame/tick/try_give
#
# バリアを付与できる状態か確認し、できるなら付与する
#
# @within function asset:effect/0433.coreflame/tick/check

#> Private
# @private
    #declare score_holder $C1.Barrier
    #declare score_holder $C1.Threshold

#  failする前にスコアリセット
    scoreboard players reset $C1.Barrier Temporary
    scoreboard players reset $C1.Threshold Temporary
# バリアを削り切られて437が削除予約中なら、437が消えるまで待つ
    data modify storage api: Argument.ID set value 437
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect{Duration:-1} run return fail

# フェニックスシールドをオフハンドに持っていないなら付与しない
    execute unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{TSB:{ID:1657}}}]}] run return fail

# バリアを付与
    function asset:effect/0433.coreflame/tick/give_barrier
