#> asset:mob/0365.frestchika/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/365/remove

# Super!
    function asset:mob/super.remove

# マーカーを片付ける
    kill @e[type=marker,tag=A5.Marker,distance=..64]

# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_Frestchika",Active:false}]
    function asset:datapack/set_activation_state
