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

# 中心点消去
    kill @e[type=marker,tag=BE.CenterPosition]

# 当たり判定消去
    execute as @e[type=item_display,tag=BE.ModelRoot] run function animated_java:heiloang_aj/as_own_locator_entities {command:'function asset:mob/0410.heiloang/death/kill_hitbox'}
    # function animated_java:heiloang_aj/remove/all

# 死亡演出
    data modify storage api: Argument.ID set value 2174
    function api:object/summon

# その他リセット
    function asset:mob/0410.heiloang/tick/util/remove_all_tag

# オブジェクト消去
    execute as @e[tag=BE.Object] on passengers run kill @s
    kill @e[tag=BE.Object]
