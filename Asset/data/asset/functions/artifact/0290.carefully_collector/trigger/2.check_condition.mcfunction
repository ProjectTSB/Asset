#> asset:artifact/0290.carefully_collector/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0290.carefully_collector/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# CanUsedでないならreturn
    execute if entity @s[tag=!CanUsed] run return fail

# サバイバルエリアか？
    execute unless predicate api:area/is_breakable run function lib:message/artifact/can_not_use_here
    execute unless predicate api:area/is_breakable run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# 足元がチェスト・トラップチェストか？
    execute unless block ~ ~ ~ chest unless block ~ ~ ~ trapped_chest run data modify storage asset:temp Fail set value true
    execute if data storage asset:temp {Fail:true} run tellraw @s [{"text":"","italic":false,"color":"red"},{"text":"足元が"},{"translate":"block.minecraft.chest"},{"text":"か"},{"translate":"block.minecraft.trapped_chest"},{"text":"である必要があります。"}]
    execute if data storage asset:temp {Fail:true} run tag @s remove CanUsed
    data remove storage asset:temp Fail
    execute if entity @s[tag=!CanUsed] run return fail

# チェストの中身を取得し、中にアイテム入りアイテムがあれば回収できない
# 失敗時、asset:temp blockを削除
    data modify storage asset:temp block set from block ~ ~ ~
    execute if function asset:artifact/0290.carefully_collector/trigger/2.check_condition/is_nested run data modify storage asset:temp Fail set value true
    execute if data storage asset:temp {Fail:true} run tellraw @s [{"translate":"block.minecraft.chest","color":"red"},{"text":"または"},{"translate":"block.minecraft.shulker_box"},{"text":"が中に入っています"}]
    execute if data storage asset:temp {Fail:true} run data remove storage asset:temp block
    execute if data storage asset:temp {Fail:true} run tag @s remove CanUsed
    data remove storage asset:temp Fail
    execute if entity @s[tag=!CanUsed] run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    function asset:artifact/0290.carefully_collector/trigger/3.main

# リセット
    data remove storage asset:temp block
