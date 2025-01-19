#> asset:artifact/0837.the_world_knife/trigger/the_world/
#
#
#
# @within function asset:artifact/0837.the_world_knife/trigger/3.main

# エフェクト付与
    data modify storage api: Argument.ID set value 277
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @p[tag=this] UserID
    execute as @p[tag=this] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# ナイフ設置
    function asset:artifact/0837.the_world_knife/trigger/the_world/one
    function asset:artifact/0837.the_world_knife/trigger/the_world/one
    function asset:artifact/0837.the_world_knife/trigger/the_world/one
# 動けなくする
    effect give @s slowness 2 50 true
# リセット
    tag @s remove N9.Target
