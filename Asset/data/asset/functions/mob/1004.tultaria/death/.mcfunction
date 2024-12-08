#> asset:mob/1004.tultaria/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/1004/death

# オブジェクト類のキル
    kill @e[type=item_display,scores={ObjectID=2030}]
    kill @e[type=item_display,scores={ObjectID=2043}]
    kill @e[type=item_display,scores={ObjectID=2053}]
    kill @e[type=item_display,tag=RW.SkyBox,sort=nearest,limit=1]

# モデルを消す
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/remove/this

# Super!
    function asset:mob/super.death
