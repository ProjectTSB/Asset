#> asset:mob/0380.haruclaire_v3/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/380/death

# 継承元の処理実行
    function asset:mob/super.death

# 中心点消去
    kill @e[type=marker,tag=AK.CenterPosition]

# Ajモデル消去
    # LocatorEntityは使用予定は無い
        # execute as @e[type=item_display,tag=AK.ModelRoot] run function animated_java:haruclaire_aj/as_own_locator_entities {command:'function asset:mob/0410.heiloang/death/kill_hitbox'}
    function animated_java:haruclaire_aj/remove/all
