#> asset:object/2168.general_long_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2168/tick

# ストレージ用意
    data modify storage asset:context this.LeftRotation set value {axis:[1f,0f,0f],angle:0}
    data modify storage asset:context this.RightRotation set value {axis:[0f,-1f,0f],angle:0}

# 上に乗ってるマーカーを指定
    execute on passengers run tag @s add 2168.Target

# 一時エンティティ召喚
    summon marker ~ ~ ~ {Tags:["2168.Marker.Temp"]}

# 向き変更…？
    execute as @e[type=marker,tag=2168.Marker.Temp,sort=nearest,limit=1] at @s rotated as @e[type=marker,tag=2168.Target,limit=1] run tp @s ~ ~ ~ ~ ~
    execute rotated as @e[type=marker,tag=2168.Target,limit=1] positioned 0.0 0.0 0.0 run tp @e[type=marker,tag=2168.Marker.Temp,limit=1] ^1 ^ ^ ~ ~
    data modify storage asset:context this.LeftRotation.axis set from entity @e[type=marker,tag=2168.Marker.Temp,limit=1] Pos
    execute store result storage asset:context this.RightRotation.angle float 0.000001745 run data get entity @e[type=marker,tag=2168.Marker.Temp,limit=1] Rotation[0] 10000

# execute幾何学で、縦角度[-90~90]⇒横角度[0~180]に変換
    execute rotated as @e[type=marker,tag=2168.Target,limit=1] rotated -90 ~ positioned 0.0 0.0 0.0 positioned ^ ^ ^1 rotated ~180 ~ positioned ^ ^ ^-1 rotated ~-90 ~ positioned ^ ^1 ^ rotated ~180 ~ positioned ^ ^-1 ^ facing 0.0 0.0 0.0 run tp @e[type=marker,tag=2168.Marker.Temp,limit=1] 0.0 0.0 0.0 ~ ~
    execute store result storage asset:context this.LeftRotation.angle float 0.000001745 run data get entity @e[type=marker,tag=2168.Marker.Temp,limit=1] Rotation[0] 10000

# 一時エンティティ削除
    kill @e[type=marker,tag=2168.Marker.Temp,sort=nearest,limit=1]


# 一時エンティティ削除: 0 0 0に飛んでるのでdistanceは付けられないかもしれない
    kill @e[tag=2168.Marker.Temp,limit=1]

# ターゲット解除
    execute on passengers run tag @s remove 2168.Target

# 変形反映
    data modify entity @s transformation.left_rotation set from storage asset:context this.LeftRotation
    data modify entity @s transformation.right_rotation set from storage asset:context this.RightRotation
    #data modify entity @s transformation.scale set value [1f,100f,1f]

# アニメの速さを設定
    data modify entity @s start_interpolation set value 0

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 変形
    execute if score @s General.Object.Tick matches 2 run function asset:object/2168.general_long_laser/tick/transform/appear

# 縮む
    execute if score @s General.Object.Tick = @s 2168.DisppearTick run function asset:object/2168.general_long_laser/tick/transform/disappear

# 消滅処理
    execute if score @s General.Object.Tick > @s 2168.LifeTime on passengers run kill @s
    execute if score @s General.Object.Tick > @s 2168.LifeTime run kill @s
