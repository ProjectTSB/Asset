#> asset:object/1099.conviction_sword/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1099/tick

#> Private
# @private
    #declare score_holder $Interval

# UserIDをスコアへ、Tagで紐づける
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add Owner
# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 持ち主を起点に回転する
    execute positioned as @p[tag=Owner] run tp @e[type=item_display,tag=this,limit=1] ~ ~ ~ ~20 ~

# 一定tick毎にダメージ
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 at @s run function asset:object/1099.conviction_sword/tick/damage
    scoreboard players reset $Interval Temporary

# 消滅 & 弾召喚
    execute if score @s General.Object.Tick matches 60.. at @s run function asset:object/1099.conviction_sword/tick/kill

# リセット
    scoreboard players reset $UserID Temporary
    tag @p[tag=Owner] remove Owner
