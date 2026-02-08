#> asset:mob/0456.gargo_ex_machina/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/456/remove

# 継承元の処理実行
    function asset:mob/super.remove

# kill時のparticleが見えないように
    tp @s ~ ~-100 ~

# 中心点消去
    kill @e[type=marker,tag=CO.CenterPosition]

# Ajモデル消去
    # execute as @e[type=item_display,tag=BE.ModelRoot] on passengers if entity @s[type=snowball] on origin run data merge entity @s {Size:0,Tags:["BE.Temp.Dummy"]}
    # execute as @e[type=slime,tag=BE.Temp.Dummy] run tp @s ~ ~100 ~
    # kill @e[type=slime,tag=BE.Temp.Dummy]
    # execute as @e[type=item_display,tag=CO.ModelRoot] run function animated_java:gargo_ex_machina/as_own_locator_entities {command:'function asset:mob/0410.heiloang/remove/kill_hitbox'}
    function animated_java:gargo_ex_machina/remove/all

# 当たり判定消去
    # execute as @e[type=item_display,tag=CO.ModelRoot] run function animated_java:heiloang_aj/as_own_locator_entities {command:'function asset:mob/0410.heiloang/death/kill_hitbox'}
    function animated_java:gargo_ex_machina/remove/all

# その他リセット
    # function asset:mob/0456.gargo_ex_machina/tick/util/remove_all_tag

# オブジェクト消去
    execute as @e[tag=CO.Object,distance=..160] on passengers run kill @s
    kill @e[tag=CO.Object,distance=..160]
