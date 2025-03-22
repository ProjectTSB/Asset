#> asset:mob/0410.heiloang/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/410/remove

# 継承元の処理実行
    function asset:mob/super.remove

# Sizeによる分裂対策
    tp @s ~ ~-100 ~
    data modify entity @s Size set value 0

# バイオームリセット
    execute at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-25 ~-5 ~-25 ~25 ~ ~25 minecraft:the_void
    execute at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-25 ~ ~-25 ~25 ~5 ~25 minecraft:the_void
    execute at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-25 ~5 ~-25 ~25 ~10 ~25 minecraft:the_void

# 中心点消去
    kill @e[type=marker,tag=BE.CenterPosition]

# Ajモデル消去
    # execute as @e[type=item_display,tag=BE.ModelRoot] on passengers if entity @s[type=snowball] on origin run data merge entity @s {Size:0,Tags:["BE.Temp.Dummy"]}
    # execute as @e[type=slime,tag=BE.Temp.Dummy] run tp @s ~ ~100 ~
    # kill @e[type=slime,tag=BE.Temp.Dummy]
    execute as @e[type=item_display,tag=BE.ModelRoot] run function animated_java:heiloang_aj/as_own_locator_entities {command:'function asset:mob/0410.heiloang/remove/kill_hitbox'}
    function animated_java:heiloang_aj/remove/all

# その他リセット
    function asset:mob/0410.heiloang/tick/util/remove_all_tag

# オブジェクト消去
    execute as @e[tag=BE.Object] on passengers run kill @s
    kill @e[tag=BE.Object]
    function animated_java:heiloang_flare_aj/remove/all
