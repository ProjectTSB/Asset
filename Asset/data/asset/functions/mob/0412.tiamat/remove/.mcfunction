#> asset:mob/0412.tiamat/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/412/remove

# 継承元の処理実行
    function asset:mob/super.remove

# Sizeによる分裂対策
    tp @s ~ ~-100 ~
    data modify entity @s Size set value 0

# Ajモデル消去
    execute as @e[type=item_display,tag=BG.ModelRoot] run function animated_java:tiamat_aj/as_own_locator_entities {command:'function asset:mob/0412.tiamat/remove/kill_hitbox'}
    function animated_java:tiamat_aj/remove/all

# その他リセット
    tag @a[tag=BG.MainTarget,tag=!PlayerShouldInvulnerable] remove BG.MainTarget
    # function asset:mob/0412.tiamat/tick/util/remove_all_tag

# オブジェクト消去
    execute as @e[tag=BG.Object,distance=..160] on passengers run kill @s
    kill @e[tag=BG.Object,distance=..160]
