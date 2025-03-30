#> asset:mob/0380.haruclaire_v3/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/380/remove

# 継承元の処理実行
    function asset:mob/super.remove

# 中心点消去
    kill @e[type=marker,tag=AK.CenterPosition]

# その他消去処理
    function asset:mob/0380.haruclaire_v3/tick/util/remove_all_tag

# Ajモデル消去
    # LocatorEntityは使用予定は無い
        # execute as @e[type=item_display,tag=AK.ModelRoot] run function animated_java:haruclaire_aj/as_own_locator_entities {command:'function asset:mob/0410.heiloang/death/kill_hitbox'}
    function animated_java:haruclaire_aj/remove/all

# オブジェクト消去
    execute as @e[tag=AK.Object] on passengers run kill @s
    kill @e[tag=AK.Object]

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_Haruclaire",Active:false}]
    function asset:datapack/set_activation_state
