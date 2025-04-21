#> asset:mob/0437.lawless_iron_doll/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/437/remove

# Super!
    function asset:mob/super.remove

# モデルを削除
    execute as @e[type=item_display,tag=C5.ModelRoot,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/remove/this

# 臆病風が吹かなくなる
    execute as @a[distance=..256] run function asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/remove

# マーカーを片付ける
    kill @e[type=marker,tag=C5.Marker,distance=..256]

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_lawless_iron_doll",Active:false}]
    function asset:datapack/set_activation_state
