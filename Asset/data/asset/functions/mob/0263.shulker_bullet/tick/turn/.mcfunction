#> asset:mob/0263.shulker_bullet/tick/turn/
# @within asset:mob/0263.shulker_bullet/tick/rec

# ターゲットにテレポートする
    data modify entity @e[type=marker,tag=7B.Target,distance=..0.5,limit=1] Rotation set from entity @s Rotation
    tp @s @e[type=marker,tag=7B.Target,distance=..0.5,limit=1]
# プレイヤーを見つける
    execute store result score $7B.Temp Temporary run data get storage asset:context this.Target.ID 1
    execute at @s as @a[tag=!PlayerShouldInvulnerable,distance=..25] if score @s UserID = $7B.Temp Temporary run tag @s add 7B.Target
    execute at @s unless entity @a[tag=7B.Target,distance=..25,limit=1] run return run function asset:mob/0263.shulker_bullet/tick/turn/break
# ターゲットを再設定する
    execute as @a[tag=7B.Target,distance=..25,limit=1] facing entity @s eyes unless function asset:mob/0263.shulker_bullet/tick/target/ run return run function asset:mob/0263.shulker_bullet/tick/turn/break
    data modify entity @s Rotation set from storage asset:context this.Target.Rotation

# 回数を減らす
    execute store result storage asset:context this.TurnLimit int 0.9999999999 run data get storage asset:context this.TurnLimit 1
    execute if data storage asset:context this{TurnLimit:0} run data remove storage asset:context this.Target
# リセット
    scoreboard players reset $7B.Temp Temporary
    tag @a[tag=7B.Target,distance=..25,limit=1] remove 7B.Target
