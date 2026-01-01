#> asset:artifact/1328.snowball_canon/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1328.snowball_canon/trigger/1.trigger

# チャージ用Effectがあれば強制的にチャージ続行
# 該当エフェクトが射撃中の場合は続行しない
    data modify storage api: Argument.ID set value 347
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect unless data storage api: Return.Effect.Field{IsShooting:true} run return run function asset:artifact/1328.snowball_canon/trigger/charge

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# 射撃中は再使用させない
    execute if entity @s[tag=CanUsed] if data storage api: Return.Effect.Field{IsShooting:true} run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1328.snowball_canon/trigger/3.main
