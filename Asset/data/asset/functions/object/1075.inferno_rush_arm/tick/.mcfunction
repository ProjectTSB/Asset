#> asset:object/1075.inferno_rush_arm/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1075/tick

#> private
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# プレイヤーを紐づけ
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $OwnerID Temporary run tag @s add 1075.Owner

# プレイヤーに追尾
    execute at @p[tag=1075.Owner] positioned ~ ~1.3 ~ positioned ^ ^ ^1.6 run tp @s ~ ~ ~ ~ ~

# ntickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
# ntickおきに実行
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 at @s positioned ^ ^ ^0.4 run function asset:object/1075.inferno_rush_arm/tick/hit
# リセット
    scoreboard players reset $Interval

# ntickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
# ntickおきに実行
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run playsound entity.player.attack.nodamage neutral @a ~ ~ ~ 1 2
# リセット
    scoreboard players reset $Interval

# タグ消す
    tag @p[tag=1075.Owner,distance=..10] remove 1075.Owner

# 消滅処理
    kill @s[scores={General.Object.Tick=300..}]
