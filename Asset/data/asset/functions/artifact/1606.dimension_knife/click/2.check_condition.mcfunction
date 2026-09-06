#> asset:artifact/1606.dimension_knife/click/2.check_condition
#
#
#
# @within function asset:artifact/1606.dimension_knife/click/1.trigger

# 基本的なチェック
    function asset:artifact/common/check_condition/mainhand

# バフがあるかチェック
    data modify storage api: Argument.ID set value 387
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# 前方に敵がいるかどうか
    function asset:artifact/1606.dimension_knife/click/2.check_condition/find_enemy/

# ターゲットがいなければCanUsedを削除
    execute unless entity @e[type=#lib:living_without_player,tag=Target,distance=..20] run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run function asset:artifact/1606.dimension_knife/click/2.check_condition/reset
    execute if entity @s[tag=!CanUsed] run return fail

# ターゲットの背後がブロックに埋まっている場合、CanUsedを削除
    execute positioned as @e[type=#lib:living_without_player,tag=Target,distance=..20,limit=1] rotated ~ 0 positioned ^ ^1.8 ^1.6 unless function asset:artifact/1606.dimension_knife/click/2.check_condition/check_safe run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run function asset:artifact/1606.dimension_knife/click/2.check_condition/reset
    execute if entity @s[tag=!CanUsed] run return fail

# 実行
    function asset:artifact/1606.dimension_knife/click/3.main
    tag @s remove CanUsed

# リセット
    function asset:artifact/1606.dimension_knife/click/2.check_condition/reset
