#> asset:mob/0461.nectar_plant/tick/summon_object/check
#
#
#
# @within function asset:mob/0461.nectar_plant/tick/attack

# 最寄りのプレイヤーがOnGround:1bか？
    execute as @p[gamemode=!spectator,distance=..0.01] run function api:data_get/on_ground

# OnGround:1bならそのまま召喚
    execute if entity @p[gamemode=!spectator,distance=..0.01] if data storage api: {OnGround:1b} run return run function asset:mob/0461.nectar_plant/tick/summon_object/summon

# 1bでないならできる限り地面に寄せて召喚
    data modify storage asset:temp RecursiveLimit set value 10
    execute align y run function asset:mob/0461.nectar_plant/tick/summon_object/align_to_ground
    data remove storage asset:temp RecursiveLimit
