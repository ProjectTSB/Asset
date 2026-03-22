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
    data modify storage api: Argument.ID set value 2273
    function api:object/summon

# 中心点消去
    kill @e[type=marker,tag=CO.CenterPosition]

# 当たり判定消去
    execute as @e[type=item_display,tag=CO.ModelRoot] run function animated_java:gargo_ex_machina/as_own_locator_entities {command:'function asset:mob/0456.gargo_ex_machina/death/kill_hitbox'}
    # function animated_java:gargo_ex_machina/remove/all

# その他リセット
    # function asset:mob/0456.gargo_ex_machina/tick/util/remove_all_tag
    bossbar remove asset:co_field_modify

# オブジェクト消去
    function animated_java:gem_attack_drone/remove/all
    function animated_java:gem_tnt_drone/remove/all
    function animated_java:gem_panjan_drone/remove/all
    execute as @e[tag=CO.Object,distance=..160] on passengers run kill @s
    kill @e[tag=CO.Object,distance=..160]

# 石像移動
    function asset:mob/0456.gargo_ex_machina/death/clone_statue
