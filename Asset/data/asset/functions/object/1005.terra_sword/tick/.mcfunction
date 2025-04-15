#> asset:object/1005.terra_sword/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1005/tick

#> Private
# @private
    #declare tag Owner
    #declare score_holder $UserID
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 4tick毎にplaysound
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.75
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.5 1.25
    scoreboard players reset $Interval

# Owner特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add Owner

# 持ち主にTP
    execute at @p[tag=Owner] positioned ~ ~1.5 ~ positioned ^ ^ ^1.2 run tp @s ~ ~ ~ ~ ~

# 射撃攻撃
    execute store result storage asset:context this.ShotInterval int 0.9999999999 run data get storage asset:context this.ShotInterval
    execute if data storage asset:context this{ShotInterval:0} if score @s General.Object.Tick matches ..11 anchored eyes positioned ^ ^0.277 ^ run function asset:object/1005.terra_sword/tick/shot
    execute if data storage asset:context this{ShotInterval:0} run data modify storage asset:context this.ShotInterval set value 2

# リセット
    tag @p[tag=Owner] remove Owner
    scoreboard players reset $UserID Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=20..}]
