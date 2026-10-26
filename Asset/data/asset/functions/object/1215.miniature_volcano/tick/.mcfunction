#> asset:object/1215.miniature_volcano/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1215/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 一旦姿を隠す
    execute if score @s General.Object.Tick matches 10 run data modify storage asset:context this.Item set from entity @s item
    execute if score @s General.Object.Tick matches 10 run data modify entity @s item.id set value "air"

# Ntick経つと近くの敵の上にワープする
    execute if score @s General.Object.Tick matches 15 run function asset:object/1215.miniature_volcano/tick/teleport/

# (N+1)tick目に姿を現す
    execute if score @s General.Object.Tick matches 16 run data modify entity @s item set from storage asset:context this.Item

# (N+1)tick以降はTargetMobUUIDに追尾をする
    execute if score @s General.Object.Tick matches 16..25 if data storage asset:context this.TargetMobUUID run function asset:object/1215.miniature_volcano/tick/chase.m with storage asset:context this

# super.tick
    execute at @s unless score @s General.Object.Tick matches 10..15 run function asset:object/super.tick
