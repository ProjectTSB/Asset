#> asset:artifact/1045.mini_black_hole/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1045.mini_black_hole/trigger/2.check_condition

#> Val
# @private
    #declare score_holder $T1.OwnerId

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 雪玉を召喚する
    execute anchored eyes run summon snowball ^ ^ ^0.5 {Tags:["T1.SnowBall","T1.SnowBallInit"],NoGravity:1b,Item:{Count:1b,id:"minecraft:stick",tag:{CustomModelData:1037}},Passengers:[{id:"minecraft:marker",Tags:["T1.Marker"]}]}

# スコアセット
    scoreboard players operation $T1.OwnerId Temporary = @s UserID 
    execute as @e[type=snowball,tag=T1.SnowBallInit,distance=..3,limit=1] on passengers run scoreboard players operation @s T1.OwnerID = $T1.OwnerId Temporary
    execute as @e[type=snowball,tag=T1.SnowBallInit,distance=..3,limit=1] on passengers run scoreboard players set @s T1.FlyingTick 100
    execute as @e[type=snowball,tag=T1.SnowBallInit,distance=..3,limit=1] on passengers run scoreboard players set @s T1.LandingTick 0

# 雪玉にMotionをセットする
    data modify storage lib: Argument.VectorMagnitude set value 0.75
    execute as @e[type=snowball,tag=T1.SnowBallInit,distance=..3] run function lib:motion/

# 命中判定を行うためのscheduleをセットする
    schedule function asset:artifact/1045.mini_black_hole/trigger/schedule/1.tick 1t replace

# 発動時の音
    playsound block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 1.0 2 0.0
    playsound entity.wither.hurt player @a[distance=..16] ~ ~ ~ 0.5 1.5

# 演出
    execute anchored eyes positioned ^ ^ ^0.5 run function asset:artifact/1045.mini_black_hole/trigger/3.1.vfx

# リセット処理
    tag @e[type=snowball,tag=T1.SnowBallInit,distance=..3] remove T1.SnowBallInit
    data remove storage lib: Argument
    scoreboard players reset $T1.OwnerId Temporary