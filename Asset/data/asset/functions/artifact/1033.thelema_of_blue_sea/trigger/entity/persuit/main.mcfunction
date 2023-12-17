#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/main
#
#
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/loop

#> Private
# @private
    #declare score_holder

# Tickスコア増加
    scoreboard players add @s SP.Tick 1

# Ownerの最大体力の0.05倍をスコアで取得
    execute at @a[distance=..100] if score @s SP.UserID = @p UserID store result score @s SP.MaxHealth run attribute @p generic.max_health get 0.05

# 最大HP20につき1本増加 最大10本まで
# 左右対称になるように、偶数本目は2パターン配置箇所が存在する

# 1本目
    execute if entity @s[scores={SP.Tick=1,SP.MaxHealth=1..}] run summon item_display ^ ^5 ^-1 {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# 2本目
    execute if entity @s[scores={SP.Tick=13,SP.MaxHealth=2}] run summon item_display ^ ^5 ^1 {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
    execute if entity @s[scores={SP.Tick=13,SP.MaxHealth=3..}] run summon item_display ^1 ^5 ^-1 {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# 3本目
    execute if entity @s[scores={SP.Tick=13,SP.MaxHealth=3..}] run summon item_display ^-1 ^5 ^-1 {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# 4本目
    execute if entity @s[scores={SP.Tick=15,SP.MaxHealth=4}] run summon item_display ^ ^5 ^1 {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
    execute if entity @s[scores={SP.Tick=15,SP.MaxHealth=5..}] run summon item_display ^1 ^5 ^1 {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# 5本目
    execute if entity @s[scores={SP.Tick=15,SP.MaxHealth=5..}] run summon item_display ^-1 ^5 ^1 {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# 6本目
    execute if entity @s[scores={SP.Tick=17,SP.MaxHealth=6}] run summon item_display ^ ^5 ^1 {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
    execute if entity @s[scores={SP.Tick=17,SP.MaxHealth=7..}] run summon item_display ^2 ^5 ^ {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# 7本目
    execute if entity @s[scores={SP.Tick=17,SP.MaxHealth=7..}] run summon item_display ^-2 ^5 ^ {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# 8本目
    execute if entity @s[scores={SP.Tick=19,SP.MaxHealth=8}] run summon item_display ^ ^5 ^1 {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
    execute if entity @s[scores={SP.Tick=19,SP.MaxHealth=9..}] run summon item_display ^ ^5 ^1 {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# 9本目
    execute if entity @s[scores={SP.Tick=19,SP.MaxHealth=9..}] run summon item_display ^ ^5 ^-2 {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

# 10本目
    execute if entity @s[scores={SP.Tick=21,SP.MaxHealth=10..}] run summon item_display ^ ^5 ^2 {Tags:["SP.Entity","SP.Sword"],teleport_duration:1,item:{id:"minecraft:diamond_sword",Count:1b},billboard:vertical,transformation:[-0.7071f,-0.7071f,0.0000f,0.0000f,0.7071f,-0.7071f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}