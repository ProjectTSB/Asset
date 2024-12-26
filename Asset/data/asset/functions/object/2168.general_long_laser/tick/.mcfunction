#> asset:object/2168.general_long_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2168/tick

# ストレージ用意
    data modify storage asset:context this.LeftRotation set value {axis:[1f,0f,0f],angle:0}
    data modify storage asset:context this.RightRotation set value {axis:[0f,-1f,0f],angle:0}

# 一時エンティティ召喚
    summon marker ~ ~ ~ {Tags:["rot2trans_temp"]}

# 向き変更…？
    execute as @e[tag=rot2trans_temp,sort=nearest,limit=1] at @s rotated as @e[tag=Test,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    execute rotated as @e[tag=Test,sort=nearest,limit=1] positioned 0.0 0.0 0.0 run tp @e[tag=rot2trans_temp,limit=1] ^1 ^ ^ ~ ~
    data modify storage asset:context this.LeftRotation.axis set from entity @e[tag=rot2trans_temp,limit=1] Pos
    execute store result storage asset:context this.RightRotation.angle float 0.000001745 run data get entity @e[tag=rot2trans_temp,limit=1] Rotation[0] 10000

# execute幾何学で、縦角度[-90~90]⇒横角度[0~180]に変換
    execute rotated as @e[tag=Test,sort=nearest,limit=1] rotated -90 ~ positioned 0.0 0.0 0.0 positioned ^ ^ ^1 rotated ~180 ~ positioned ^ ^ ^-1 rotated ~-90 ~ positioned ^ ^1 ^ rotated ~180 ~ positioned ^ ^-1 ^ facing 0.0 0.0 0.0 run tp @e[tag=rot2trans_temp,limit=1] 0.0 0.0 0.0 ~ ~
    execute store result storage asset:context this.LeftRotation.angle float 0.000001745 run data get entity @e[tag=rot2trans_temp,limit=1] Rotation[0] 10000

# 一時エンティティ削除
    kill @e[tag=rot2trans_temp,sort=nearest,limit=1]

# 変形反映
    data modify entity @s transformation.left_rotation set from storage asset:context this.LeftRotation
    data modify entity @s transformation.right_rotation set from storage asset:context this.RightRotation
    #data modify entity @s transformation.scale set value [1f,100f,1f]

# アニメの速さを設定
    data modify entity @s start_interpolation set value 0

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 変形
    execute if score @s General.Object.Tick matches 3.. run function asset:object/2168.general_long_laser/tick/transform

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
