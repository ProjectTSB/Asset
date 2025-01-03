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

# 中心点消去
    kill @e[type=marker,tag=BE.CenterPosition]

# Ajモデル消去
    # execute as @e[type=item_display,tag=BE.ModelRoot] on passengers if entity @s[type=snowball] on origin run data merge entity @s {Size:0,Tags:["BE.Temp.Dummy"]}
    # execute as @e[type=slime,tag=BE.Temp.Dummy] run tp @s ~ ~100 ~
    # kill @e[type=slime,tag=BE.Temp.Dummy]
    execute as @e[type=item_display,tag=BE.ModelRoot] run function animated_java:heiloang_aj/as_own_locator_entities {command:'function asset:mob/0410.heiloang/death/kill_hitbox'}
    function animated_java:heiloang_aj/remove/all

# その他リセット
    function asset:mob/0410.heiloang/tick/util/remove_all_tag

# オブジェクト消去
    execute as @e[tag=BE.Object] on passengers run kill @s
    kill @e[tag=BE.Object]
