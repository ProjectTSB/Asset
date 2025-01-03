#> asset:mob/1004.tultaria/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/1004/death

# 足場を元に戻す
    execute at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..64,limit=1] run function asset:mob/1004.tultaria/tick/reset_arena

# オブジェクト類のキル
    function asset:mob/1004.tultaria/tick/reset/remove_objects
    kill @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1]

# 「忠誠の幻影」がいたら消す
    execute as @e[type=wither_skeleton,scores={MobID=1005},distance=..64] run function api:mob/kill

# モデルを消す
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/remove/this

# Super!
    function asset:mob/super.death
