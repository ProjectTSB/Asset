#> asset:artifact/1079.allochromatic/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1079.allochromatic/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 自身に共鳴・蒼バフを付与
    data modify storage api: Argument.ID set value 229
    #function api:entity/mob/effect/give

# 周囲に共鳴・紅バフを持っているプレイヤーがいないか探す
    execute as @a[distance=..20] run function asset:artifact/1079.allochromatic/trigger/4.search_resonance

# メインハンドかオフハンドかで発射位置を変える
    execute if data storage asset:context id{mainhand:1079} anchored eyes positioned ^-0.35 ^-0.15 ^0.5 run function asset:artifact/1079.allochromatic/trigger/5.shot
    execute if data storage asset:context id{offhand:1079} anchored eyes positioned ^0.35 ^-0.15 ^0.5 run function asset:artifact/1079.allochromatic/trigger/5.shot