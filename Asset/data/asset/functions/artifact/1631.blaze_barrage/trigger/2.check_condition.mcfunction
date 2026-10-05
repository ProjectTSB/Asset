#> asset:artifact/1631.blaze_barrage/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1631.blaze_barrage/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# 発動条件は
# (自身が地上にいる || (自身に固有バフ(ID:403)がある && 一定以上浮いている))

# CanUsedでないならreturn
    execute if entity @s[tag=!CanUsed] run return fail

# バフチェック
    data modify storage api: Argument.ID set value 403
    function api:entity/mob/effect/get/from_id

# OnGroundをチェック
    function api:data_get/on_ground

# onGround:1bでないならreturn
    #execute unless data storage api: {OnGround:1b} run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# 自身にバフがあるとき、空中にいなければreturn
    execute if data storage api: Return.Effect unless function asset:artifact/1631.blaze_barrage/trigger/2.check_condition/in_air run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    function asset:artifact/1631.blaze_barrage/trigger/3.main
