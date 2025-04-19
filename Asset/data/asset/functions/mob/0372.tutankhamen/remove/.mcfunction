#> asset:mob/0372.tutankhamen/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/372/remove

# super.remove呼び出し
    function asset:mob/super.remove

# SpawnMarkerを削除
    kill @e[type=marker,tag=AC.SpawnMarker]

# CoffinPointを削除
    kill @e[type=marker,tag=AC.CoffinPoint]

# AJ削除
    execute at @s as @e[type=item_display,tag=AC.AJ,distance=..100,sort=nearest,limit=1] run function animated_java:tutankhamen/remove/this

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_tutankhamen",Active:false}]
    function asset:datapack/set_activation_state
