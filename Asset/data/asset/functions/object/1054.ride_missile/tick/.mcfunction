#> asset:object/1054.ride_missile/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1054/tick

#> private
# @private
    #declare score_holder $OwnerID
    #declare tag 1054.Target

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle flame ^ ^ ^-0.2 0 0 0 0 0
    particle smoke ^ ^ ^-0.2 0 0 0 0 0

# プレイヤーを紐づけ
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute at @a if score $OwnerID Temporary = @p UserID as @p run tag @s add 1054.Owner

# ブロック判定
    execute unless block ^ ^ ^0.5 #lib:no_collision run function asset:object/1054.ride_missile/tick/kill
    execute unless block ^ ^ ^1 #lib:no_collision run function asset:object/1054.ride_missile/tick/kill

# プレイヤーの前方にマーカーを召喚し、それを狙って追尾する
    execute at @p[tag=1054.Owner,distance=..64] positioned ^ ^ ^64 run summon marker ~ ~ ~ {Tags:["1054.Target"]}
    execute facing entity @e[type=marker,tag=1054.Target,distance=..200,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1500 facing entity @s eyes positioned as @s run tp @s ^ ^ ^1 ~ ~

# マーカー消す
    kill @e[type=marker,tag=1054.Target,distance=..200]

# 消える前には警告音
    execute if score @s General.Object.Tick matches 44.. run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2

# 消滅処理
    execute if score @s General.Object.Tick matches 64.. run function asset:object/1054.ride_missile/tick/kill
    execute unless entity @p[tag=1054.Owner,distance=..64] run function asset:object/1054.ride_missile/tick/kill

# リセット
    scoreboard players reset $OwnerID Temporary
    tag @p[tag=1054.Owner] remove 1054.Owner
