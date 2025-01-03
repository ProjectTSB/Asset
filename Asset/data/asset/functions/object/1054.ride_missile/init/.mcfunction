#> asset:object/1054.ride_missile/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1054/init

#> private
# @private
    #declare score_holder $OwnerID
    #declare tag 1054.Init

# 演出
    playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1

# スニークしてなければプレイヤーをライドさせる
    tag @s add 1054.Init
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $OwnerID Temporary unless predicate lib:is_sneaking run ride @s mount @e[type=item_display,tag=1054.Init,distance=..0.1,sort=nearest,limit=1]

# リセット
    tag @s remove 1054.Init
    scoreboard players reset $OwnerID Temporary

# super.init
    function asset:object/super.init
