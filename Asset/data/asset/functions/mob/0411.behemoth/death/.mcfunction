#> asset:mob/0411.behemoth/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/411/death

# 継承元の処理実行
    function asset:mob/super.death

# Sizeによる分裂対策
    tp @s ~ ~-100 ~
    data modify entity @s Size set value 0

# Ajモデル消去
    execute as @e[type=item_display,tag=BF.ModelRoot] run function animated_java:behemoth_aj/as_own_locator_entities {command:'function asset:mob/0411.behemoth/death/kill_hitbox'}
    function animated_java:behemoth_aj/remove/all

# その他リセット
    function asset:mob/0411.behemoth/tick/util/remove_all_tag

# オブジェクト消去
    execute as @e[tag=BF.Object] on passengers run kill @s
    kill @e[tag=BF.Object]
