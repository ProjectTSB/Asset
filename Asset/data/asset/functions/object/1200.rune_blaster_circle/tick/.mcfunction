#> asset:object/1200.rune_blaster_circle/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1200/tick

# 消滅中でなければ、Ownerの位置を維持
    execute unless data storage asset:context this{Phase:"Disappearing"} as @a if score @s UserID = @e[type=text_display,tag=this,distance=..0.01,limit=1] 19V.UserID at @s anchored eyes positioned ^ ^-0.15 ^0.675 run tp @e[type=text_display,tag=this,distance=..128] ~ ~ ~ ~ ~

# super.tick
    execute at @s run function asset:object/super.tick

# 神器から呼び出された場合、寿命を延長する
    execute if entity @s[tag=1200.Called] if data storage asset:context this{RemainingTick:9} run data modify storage asset:context this.RemainingTick set value 25

# リセット
    tag @s remove 1200.Called
