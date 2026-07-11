#> asset:mob/0464.drain_plant/tick/fall/
#
#
#
# @within function asset:mob/0464.drain_plant/tick/

# 既に落下中でなければNoAIを0bにして落下
    execute if data storage asset:context this{IsFalling:false,DisableFalling:false} if block ~ ~-0.1 ~ #lib:no_collision/ run function asset:mob/0464.drain_plant/tick/fall/start

# 落下中は向きを固定する(NoAIでなくなるため、変な方向を向く可能性がある)
    execute if data storage asset:context this{IsFalling:true} run data modify entity @s Rotation set value [0f,0f]

# 落下中に地面に着いた場合はNoAIを1bにする
    execute if data storage asset:context this{IsFalling:true} if data entity @s {OnGround:1b} run function asset:mob/0464.drain_plant/tick/fall/end
