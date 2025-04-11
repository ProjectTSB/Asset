#> asset:mob/0412.tiamat/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/412/death

# 継承元の処理実行
    function asset:mob/super.death

# Sizeによる分裂対策
    tp @s ~ ~-100 ~
    data modify entity @s Size set value 0

# Ajモデル消去
    execute as @e[type=item_display,tag=BG.ModelRoot] run function animated_java:tiamat_aj/as_own_locator_entities {command:'function asset:mob/0412.tiamat/death/kill_hitbox'}
    # function animated_java:tiamat_aj/remove/all

# その他リセット
    tag @a remove BG.MainTarget
    # function asset:mob/0410.tiamat/tick/util/remove_all_tag

# オブジェクト消去
    execute as @e[tag=BG.Object,distance=..160] on passengers run kill @s
    kill @e[tag=BG.Object,distance=..160]

# 死亡演出
    data modify storage api: Argument.ID set value 2184
    function api:object/summon
    tag @e[type=slime,tag=BE.EntityRoot] add BE.State.TiamatDeath
    execute as @e[type=slime,tag=BE.EntityRoot] at @s run function asset:mob/0410.heiloang/tick/util/servants_death
