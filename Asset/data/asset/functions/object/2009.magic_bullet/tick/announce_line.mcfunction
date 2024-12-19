#> asset:object/2009.magic_bullet/tick/announce_line
#
# 予告線表示
#
# @within function asset:object/2009.magic_bullet/tick/

# 召喚
    execute if score @s General.Object.Tick matches 101 run summon item_display ~ ~ ~ {teleport_duration:1,interpolation_duration:1,Tags:["2009.AnnounceLine"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,25f],scale:[0f,0f,50f]},item:{id:"orange_stained_glass",Count:1b}}

# 表示
    execute if score @s General.Object.Tick matches 103 run data modify entity @e[type=item_display,tag=2009.AnnounceLine,distance=..0.01,sort=nearest,limit=1] transformation.scale set value [0.1f,0.1f,50f]

# TP
    execute at @s as @e[type=item_display,tag=2009.AnnounceLine,distance=..0.01,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# キル
    execute if score @s General.Object.Tick matches 119 run kill @e[type=item_display,tag=2009.AnnounceLine,distance=..0.01,sort=nearest,limit=1]
