#> asset:object/1091.flame_boomerang/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1091/hit_block

#> Private
# @private
    #declare tag HitGround

# すぐ上、下がブロックなら反射する
    execute on passengers at @s unless block ~ ~-0.4 ~ #lib:no_collision/ on vehicle run tag @s add HitGround
    execute on passengers at @s unless block ~ ~0.4 ~ #lib:no_collision/ on vehicle run tag @s add HitGround
    execute if entity @s[tag=HitGround] run scoreboard players set $Speed Lib 10
    execute if entity @s[tag=HitGround] run function lib:reflection_bullet/

# HitGroundではないかつ、..23なら使用者の方を見て、MovePerStepを0にし、強制的に24に変更
    execute if entity @s[tag=!HitGround] if score @s General.Object.Tick matches ..23 at @s facing entity @p[tag=Owner,distance=..100] eyes run tp @s ~ ~ ~ ~ ~
    execute if entity @s[tag=!HitGround] if score @s General.Object.Tick matches ..23 run data modify storage asset:context this.MovePerStep set value 0
    execute if entity @s[tag=!HitGround] if score @s General.Object.Tick matches ..23 run tag @s add 1091.Collided
    execute if entity @s[tag=!HitGround] if score @s General.Object.Tick matches ..23 run scoreboard players set @s General.Object.Tick 24

# 壁にヒットしたら消滅
# Collidedがあるか否かで、破壊するTickを変える
    execute if entity @s[tag=!1091.Collided] if score @s General.Object.Tick matches 24.. run tag @s add Break
    execute if entity @s[tag=!1091.Collided] if score @s General.Object.Tick matches 24.. run function asset:object/call.m {method:"kill"}
    execute if entity @s[tag=1091.Collided] if score @s General.Object.Tick matches 37.. run tag @s add Break
    execute if entity @s[tag=1091.Collided] if score @s General.Object.Tick matches 37.. run function asset:object/call.m {method:"kill"}

# リセット
    tag @s[tag=HitGround] remove HitGround
