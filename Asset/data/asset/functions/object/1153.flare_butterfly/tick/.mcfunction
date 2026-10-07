#> asset:object/1153.flare_butterfly/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1153/tick

#> Private
# @private
    #declare score_holder $UserID

# 演出
    function asset:object/1153.flare_butterfly/tick/vfx

# OwnerにTag付与
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add 1153.Owner
    scoreboard players reset $UserID Temporary

# 召喚時の演出
    execute if data storage asset:context this{SummonMoveEnded:false} run function asset:object/1153.flare_butterfly/tick/move/summon_move/

# 移動・追尾・攻撃
    execute if data storage asset:context this{SummonMoveEnded:true} run function asset:object/1153.flare_butterfly/tick/move/

# 攻撃のCD
    function asset:object/1153.flare_butterfly/tick/attack/cooldown/

# 蝶の向きを調整
    execute at @s on passengers run tp @s ~ ~ ~ ~ 0

# リセット
    tag @p[tag=1153.Owner] remove 1153.Owner

# 消滅処理
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick
    execute if data storage asset:context this{Tick:0} run function asset:object/1153.flare_butterfly/tick/kill
