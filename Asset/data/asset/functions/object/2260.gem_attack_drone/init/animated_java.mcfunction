#> asset:object/2260.gem_attack_drone/init/animated_java
#
# Objectのinit時の処理
#
# @within asset:object/2260.gem_attack_drone/init/

# モデル召喚
    function animated_java:gem_attack_drone/summon {args: {animation: 'summon'}}

# ID割り当て
    scoreboard players operation @e[type=item_display,tag=2260.Model,tag=!2260.Model.Init,distance=..10,sort=nearest,limit=1] CO.ObjectId = @s CO.ObjectId
    tag @e[type=item_display,tag=2260.Model,tag=!2260.Model.Init,distance=..10,sort=nearest,limit=1] add 2260.Model.Init
