#> asset:object/1054.ride_missile/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1054/tick

#> private
# @private
    #declare score_holder $OwnerID
    #declare tag 1054.Target

# 演出
    particle flame ^ ^ ^-0.2 0 0 0 0 0
    particle smoke ^ ^ ^-0.2 0 0 0 0 0

# プレイヤーを紐づけ
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $OwnerID Temporary run tag @s add 1054.Owner
# プレイヤーの前方にマーカーを召喚し、それに向かって向きを変える
    execute at @p[tag=1054.Owner,distance=..64] positioned ^ ^ ^64 run summon marker ~ ~ ~ {Tags:["1054.Target"]}
    execute facing entity @e[type=marker,tag=1054.Target,distance=..200,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1500 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
    kill @e[type=marker,tag=1054.Target,distance=..200]

# Tick加算
    scoreboard players add @s General.Object.Tick 1
# 消える前に警告音
    execute if score @s General.Object.Tick matches 44.. run playsound minecraft:block.note_block.harp neutral @a ~ ~ ~ 1 2

# 破壊不可能エリアに入ったなら即刻爆発
    execute unless predicate api:area/is_breakable run data modify storage asset:context this.RemainingRange set value 1

# super.tick
    execute at @s run function asset:object/super.tick


# リセット
    tag @p[tag=1054.Owner] remove 1054.Owner
    scoreboard players reset $OwnerID Temporary
