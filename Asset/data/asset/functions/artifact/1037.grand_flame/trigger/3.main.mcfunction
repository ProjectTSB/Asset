#> asset:artifact/1037.grand_flame/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1037.grand_flame/trigger/2.check_condition

#> Val
# @private
    #declare score_holder $ST.OwnerId

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 雪玉を召喚する
    execute anchored eyes run summon snowball ^ ^ ^0.5 {Tags:["ST.SnowBall","ST.SnowBallInit"],Item:{Count:1b,id:"minecraft:stick",tag:{CustomModelData:1037}},Passengers:[{id:"minecraft:marker",Tags:["ST.Marker"]}]}

# 体力割合を取得
    function api:entity/player/get_health_per

# スコアセット
    scoreboard players operation $ST.OwnerId Temporary = @s UserID
    execute as @e[type=snowball,tag=ST.SnowBallInit,distance=..3,limit=1] on passengers run scoreboard players operation @s ST.OwnerID = $ST.OwnerId Temporary
    execute as @e[type=snowball,tag=ST.SnowBallInit,distance=..3,limit=1] on passengers run scoreboard players set @s ST.FlyingTick 100
    execute as @e[type=snowball,tag=ST.SnowBallInit,distance=..3,limit=1] on passengers store result score @s ST.PercentHP run data get storage api: Return.HealthPer 100

# 雪玉にMotionをセットする
    data modify storage lib: Argument.VectorMagnitude set value 1.5
    execute as @e[type=snowball,tag=ST.SnowBallInit,distance=..3] run function lib:motion/

# 命中判定を行うためのscheduleをセットする
    schedule function asset:artifact/1037.grand_flame/trigger/schedule/1.tick 1t replace

# 発動時の音
    playsound block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 1.0 2 0.0
    playsound entity.blaze.shoot player @a[distance=..16] ~ ~ ~ 1.0 0.75 0.0
    playsound entity.wither.shoot player @a[distance=..16] ~ ~ ~ 0.5 1.5

# 演出
    execute anchored eyes positioned ^ ^ ^0.5 run function asset:artifact/1037.grand_flame/trigger/3.1.vfx

# リセット処理
    tag @e[type=snowball,tag=ST.SnowBallInit,distance=..3] remove ST.SnowBallInit
    data remove storage lib: Argument
    scoreboard players reset $ST.OwnerId Temporary
