#> asset:object/1061.azure_jelly/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1061/tick

#> Private
# @private
    #declare score_holder $UserID

# 存在時間フィールド減算
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick

# 常時演出
    particle dust 0.267 0.729 0.945 0.9 ~ ~ ~ 0.4 0.6 0.4 0 1 normal @a
    execute if predicate lib:random_pass_per/40 run particle scrape ~ ~ ~ 0.4 0.6 0.4 0 1 normal @a

# 召喚演出 その間はreturnする
    execute if data storage asset:context this{IsFirst:true} run return run function asset:object/1061.azure_jelly/tick/summon_effect/

# OwnerにTag付与
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add 1061.Owner

# インターバル
    execute store result score $Interval Temporary run data get storage asset:context this.Tick
    scoreboard players operation $Interval Temporary %= $50 Const

# 移動方向設定
    execute if score $Interval Temporary matches 0 run function asset:object/1061.azure_jelly/tick/turn/

# 角度
    execute if score $Interval Temporary matches 0 at @s run function asset:object/1061.azure_jelly/tick/pitch/init
    execute at @s run function asset:object/1061.azure_jelly/tick/pitch/

# 移動
    execute at @s run function asset:object/1061.azure_jelly/tick/move/

# 攻撃関連の処理
    execute at @s run function asset:object/1061.azure_jelly/tick/attack/

    #execute at @s run particle flame ^ ^ ^ 0 0 0 0 1

# リセット
    scoreboard players reset $UserID Temporary
    scoreboard players reset $Interval Temporary
    tag @p[tag=1061.Owner] remove 1061.Owner

# 消滅処理
    execute if data storage asset:context this{Tick:0} run function asset:object/1061.azure_jelly/tick/kill
