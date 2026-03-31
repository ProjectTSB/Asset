#> asset:object/2262.gem_panjan_drone/init/animated_java
#
# Objectのinit時の処理
#
# @within asset:object/2262.gem_panjan_drone/init/

# モデル召喚
    function animated_java:gem_panjan_drone/summon {args: {animation: 'summon'}}

# ID割り当て
    scoreboard players operation @e[type=item_display,tag=2262.Model,tag=!2262.Model.Init,distance=..10,sort=nearest,limit=1] CO.ObjectId = @s CO.ObjectId
    tag @e[type=item_display,tag=2262.Model,tag=!2262.Model.Init,distance=..10,sort=nearest,limit=1] add 2262.Model.Init
