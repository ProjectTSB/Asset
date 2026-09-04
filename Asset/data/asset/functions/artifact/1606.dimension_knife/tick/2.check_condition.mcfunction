#> asset:artifact/1606.dimension_knife/tick/2.check_condition
#
#
#
# @within function asset:artifact/1606.dimension_knife/tick/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1606
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    data modify storage asset:artifact DisabledCheckFlag set value {TypeCooldown:true,BelieveMessage:true,Believe:false}
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# fail
    execute if entity @s[tag=!CanUsed] run return fail

# ベクトルが全て0の時、失敗
    function api:player_vector/get
    execute if data storage api: Return{Vector:[0d,0d,0d]} run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# バフがある間加算しない
    data modify storage api: Argument.ID set value 387
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

    data modify storage api: Argument.ID set value 388
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# 3.main.mcfunctionを実行する
    function asset:artifact/1606.dimension_knife/tick/3.main
    tag @s remove CanUsed
