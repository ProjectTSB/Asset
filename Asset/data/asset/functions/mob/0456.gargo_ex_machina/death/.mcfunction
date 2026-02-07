#> asset:mob/0456.gargo_ex_machina/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/456/death

# 継承元の処理実行
    function asset:mob/super.death

# kill時のparticleが見えないように
    tp @s ~ ~-100 ~

# 死亡演出
    # title @a[distance=..80] times 1 4 3
    # title @a[distance=..80] title {"text":"\uE010","font":"screen_effect","color":"#E8E8E8"}
    # data modify storage api: Argument.ID set value 2174
    # data modify storage api: Argument.FieldOverride.Pos set from entity @e[type=marker,tag=BE.CenterPosition,distance=..160,limit=1] Pos
    # function api:object/summon
    # data modify storage api: Argument set value {ID:655,Duration:300,Stack:5}
    # execute as @a[distance=..160] run function api:entity/mob/effect/give
    # function api:entity/mob/effect/reset

# 中心点消去
    kill @e[type=marker,tag=CO.CenterPosition]

# 当たり判定消去
    # execute as @e[type=item_display,tag=CO.ModelRoot] run function animated_java:heiloang_aj/as_own_locator_entities {command:'function asset:mob/0410.heiloang/death/kill_hitbox'}
    function animated_java:gargo_ex_machina/remove/all

# その他リセット
    # function asset:mob/0456.gargo_ex_machina/tick/util/remove_all_tag

# オブジェクト消去
    execute as @e[tag=CO.Object,distance=..160] on passengers run kill @s
    kill @e[tag=CO.Object,distance=..160]
