#> asset:mob/0372.tutankhamen/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/372/death

# super.death呼び出し
    function asset:mob/super.death

# SpawnMarkerを削除
    kill @e[type=marker,tag=AC.SpawnMarker,distance=..128]

# CoffinPointを削除
    kill @e[type=marker,tag=AC.CoffinPoint,distance=..128]

# 付近の棺を全部片付ける
    execute as @e[type=polar_bear,scores={MobID=374},distance=..128] run function api:mob/kill

# 自分のモデルを片付ける
    execute as @e[type=item_display,tag=AC.AJ,distance=..100,sort=nearest,limit=1] run function animated_java:tutankhamen/remove/this

# 撃破演出用オブジェクトを召喚
    data modify storage api: Argument.ID set value 2093
    execute facing entity @p[distance=..64] eyes run function api:object/summon
