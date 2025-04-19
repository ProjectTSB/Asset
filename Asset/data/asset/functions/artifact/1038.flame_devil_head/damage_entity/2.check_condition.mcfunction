#> asset:artifact/1038.flame_devil_head/damage_entity/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1038.flame_devil_head/damage_entity/1.trigger

#> Val
# @private
    #declare score_holder $SU.LatestUseTick

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/head
# フルセットチェック
    data modify storage api: Argument.ID set value 246
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run tag @s remove CanUsed
# 現在時間を取得
# 前回効果発動時の時間との差からクールダウン中かどうかを判定する
    execute store result score $SU.LatestUseTick Temporary run time query gametime
    scoreboard players operation $SU.LatestUseTick Temporary -= @s SU.LatestUseTick
    execute if score $SU.LatestUseTick Temporary matches 100.. run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1038.flame_devil_head/damage_entity/3.main
# リセット
    tag @s remove CanUsed
