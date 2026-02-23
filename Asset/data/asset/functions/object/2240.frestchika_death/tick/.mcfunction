#> asset:object/2240.frestchika_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2240/tick


# AJモデルとの紐づけ
    execute at @s run tag @e[type=item_display,tag=A5.ModelRoot,distance=..64,sort=nearest,limit=1] add 2240.ModelRoot.Target

# モデルを追従
    execute at @s run tp @e[type=item_display,tag=2240.ModelRoot.Target,distance=..64,sort=nearest,limit=1] ~ ~ ~ ~ 0

# 足元に何もなければ
    execute if block ~ ~-0.05 ~ #lib:no_collision/ run tp @s ~ ~-0.05 ~
    execute if block ~ ~-0.25 ~ #lib:no_collision/ run tp @s ~ ~-0.25 ~

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 吹っ飛んでいく
    execute if score @s General.Object.Tick matches 0..5 rotated ~ 0 if block ^ ^ ^-1 #lib:no_collision/ run tp @s ^ ^ ^-0.5
    execute if score @s General.Object.Tick matches 6..10 rotated ~ 0 if block ^ ^ ^-1 #lib:no_collision/ run tp @s ^ ^ ^-0.2

# パーティクル
    particle smoke ~ ~ ~ 0.2 0.5 0.2 0.01 1
    execute if score @s General.Object.Tick matches ..40 if predicate lib:random_pass_per/50 run particle poof ~ ~1 ~ 0.2 0.5 0.2 0.01 1

# サウンド
    execute if score @s General.Object.Tick matches 15 run playsound entity.player.attack.strong hostile @a ~ ~ ~ 2 1.0
    execute if score @s General.Object.Tick matches 15 run playsound minecraft:block.note_block.bit hostile @a ~ ~ ~ 2 0.7

    execute if score @s General.Object.Tick matches 23 run playsound entity.player.attack.strong hostile @a ~ ~ ~ 2 1.0
    execute if score @s General.Object.Tick matches 23 run playsound minecraft:block.note_block.bit hostile @a ~ ~ ~ 2 0.5

    execute if score @s General.Object.Tick matches 32 run playsound minecraft:block.copper_bulb.turn_off hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Object.Tick matches 35 run playsound minecraft:block.copper_bulb.turn_on hostile @a ~ ~ ~ 2 1

    execute if score @s General.Object.Tick matches 40 run playsound minecraft:block.copper_bulb.turn_off hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Object.Tick matches 40 run playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 2 2

# 消失
    execute if score @s General.Object.Tick matches 60 run function asset:object/2240.frestchika_death/tick/end

# AJモデルとの紐づけ解除
    execute at @s run tag @e[type=item_display,tag=2240.ModelRoot.Target,distance=..0.01,sort=nearest,limit=1] remove 2240.ModelRoot.Target
