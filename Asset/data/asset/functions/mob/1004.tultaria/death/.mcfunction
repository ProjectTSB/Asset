#> asset:mob/1004.tultaria/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/1004/death


# オブジェクト類のキル
    function asset:mob/1004.tultaria/tick/reset/remove_objects
    kill @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1]

# モデルを消す
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/remove/this

# Super!
    function asset:mob/super.death
