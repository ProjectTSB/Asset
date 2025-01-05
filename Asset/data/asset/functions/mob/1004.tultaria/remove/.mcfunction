#> asset:mob/1004.tultaria/remove/
#
# Mobのremove時の処理
#
# @within function asset:mob/alias/1004/remove

# 第2形態だった場合、足場を片付けて最初の足場を出す
    execute at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..64,limit=1] run function asset:mob/1004.tultaria/tick/reset_arena

# スポーン地点のマーカーを片付けておく
    kill @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..64,limit=1]

# モデルを削除
    execute at @s as @e[type=item_display,tag=RW.ModelRoot,distance=..64,sort=nearest,limit=1] run function animated_java:tultaria/remove/this

# Super
    function asset:mob/super.remove
