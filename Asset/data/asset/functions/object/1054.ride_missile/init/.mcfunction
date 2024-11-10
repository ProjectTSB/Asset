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

# タグ付け
    tag @s add 1054.Init

# プレイヤーをライドさせる
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute at @a if score $OwnerID Temporary = @p UserID as @p run ride @s mount @e[tag=1054.Init,distance=..2,sort=nearest,limit=1]

# タグ消す
    tag @s remove 1054.Init
# リセット
    scoreboard players reset $OwnerID Temporary
