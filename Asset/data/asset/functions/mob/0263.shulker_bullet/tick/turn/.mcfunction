#> asset:mob/0263.shulker_bullet/tick/turn/
# @within asset:mob/0263.shulker_bullet/tick/rec

# ターゲットにテレポートする
    data modify entity @e[type=marker,tag=7B.Target,distance=..0.01,limit=1] Rotation set from entity @s Rotation
    tp @s @e[type=marker,tag=7B.Target,distance=..0.01,limit=1]
# プレイヤーを見つける
    execute store result score $7B.Temp Temporary run data get storage asset:context this.Target.ID 1
    execute at @s as @a[distance=..25] if score @s UserID = $7B.Temp Temporary run tag @s add 7B.Target
    execute at @s unless entity @a[tag=7B.Target,tag=!PlayerShouldInvulnerable,distance=..25,limit=1] run return run function asset:mob/0263.shulker_bullet/tick/turn/break
# ターゲットを再設定する
    execute at @s facing entity @a[tag=7B.Target,distance=..25,limit=1] eyes run function asset:mob/0263.shulker_bullet/tick/turn/target
    execute if data storage asset:temp 7B{Visible:false} run return run function asset:mob/0263.shulker_bullet/tick/turn/break
    execute if data storage asset:temp 7B{Visible:true} as @a[tag=7B.Target,distance=..25,limit=1] at @s anchored eyes run tp @e[type=marker,tag=7B.Target,limit=1] ^ ^ ^
    execute if data storage asset:temp 7B{Visible:true} facing entity @a[tag=7B.Target,distance=..25,limit=1] eyes run tp @s ~ ~ ~ ~ ~
    execute if data storage asset:temp 7B{Visible:true} run data modify storage asset:context this.TargetPos set from entity @e[type=marker,tag=7B.Target,limit=1] Pos

# 回数を減らす
    execute store result storage asset:context this.TurnLimit int 0.9999999999 run data get storage asset:context this.TurnLimit 1
# リセット
    scoreboard players reset $7B.Temp Temporary
    tag @a[tag=7B.Target,distance=..25] remove 7B.Target
