#> asset:object/1053.flamethrower_ball/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1053/init

#> private
# @private
    #declare score_holder $OwnerID
    #declare tag SpreadMarker
    #declare tag 1053.Owner

# タグ付け。initタグくれよ
    tag @s add 1053.Init

    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute at @a if score $OwnerID Temporary = @p UserID as @p run tag @s add 1053.Owner

# 前方拡散してから
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 0.3
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,sort=nearest,limit=1] rotated as @p[tag=1053.Owner] run function lib:forward_spreader/circle

# モーションでぶっ飛ばす。飛ぶのは下の雪玉
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,sort=nearest,limit=1] feet as @e[type=snowball,tag=1053.Snowball,tag=1053.Init,distance=..3,sort=nearest,limit=1] run function lib:motion/
    data remove storage lib: Argument

# タグ消す
    tag @s remove 1053.Init
    tag @p[tag=1053.Owner] remove 1053.Owner
    tag @e[type=snowball,tag=1053.Snowball,tag=1053.Init,distance=..3,sort=nearest,limit=1] remove 1053.Init

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
