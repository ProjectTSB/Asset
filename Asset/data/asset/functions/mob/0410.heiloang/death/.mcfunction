#> asset:mob/0410.heiloang/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/410/death

# 継承元の処理実行
    function asset:mob/super.death

# Sizeによる分裂対策
    tp @s ~ ~-100 ~
    data modify entity @s Size set value 0

# バイオームリセット
    execute at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-25 ~-5 ~-25 ~25 ~ ~25 minecraft:the_void
    execute at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-25 ~ ~-25 ~25 ~5 ~25 minecraft:the_void
    execute at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-25 ~5 ~-25 ~25 ~10 ~25 minecraft:the_void
    # effect clear @a[distance=..160] night_vision

# 死亡演出
    title @a[distance=..80] times 1 4 3
    title @a[distance=..80] title {"text":"\uE010","font":"screen_effect","color":"#E8E8E8"}
    data modify storage api: Argument.ID set value 2174
    data modify storage api: Argument.FieldOverride.Pos set from entity @e[type=marker,tag=BE.CenterPosition,distance=..160,limit=1] Pos
    function api:object/summon
    data modify storage api: Argument set value {ID:655,Duration:300,Stack:5}
    execute as @a[distance=..160] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 中心点消去
    kill @e[type=marker,tag=BE.CenterPosition]

# 当たり判定消去
    execute as @e[type=item_display,tag=BE.ModelRoot] run function animated_java:heiloang_aj/as_own_locator_entities {command:'function asset:mob/0410.heiloang/death/kill_hitbox'}
    # function animated_java:heiloang_aj/remove/all

# その他リセット
    function asset:mob/0410.heiloang/tick/util/remove_all_tag

# オブジェクト消去
    execute as @e[tag=BE.Object,distance=..160] on passengers run kill @s
    kill @e[tag=BE.Object,distance=..160]
    function animated_java:heiloang_flare_aj/remove/all
