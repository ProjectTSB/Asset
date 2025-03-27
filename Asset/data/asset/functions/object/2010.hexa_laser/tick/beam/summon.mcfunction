#> asset:object/2010.hexa_laser/tick/beam/summon
#
# ディスプレイ召喚
#
# @within function asset:object/2010.hexa_laser/tick/

# ディスプレイ召喚
    summon item_display ^ ^ ^ {Rotation:[0f,90f],interpolation_duration:5,teleport_duration:1,Tags:["2010.Display","ProcessCommonTag","AutoKillWhenDieVehicle"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0.383f,0.924f],right_rotation:[0f,0f,0f,1f],translation:[0f,-2.2f,10f],scale:[0f,0f,20f]},item:{id:"yellow_stained_glass",Count:1b}}
    summon item_display ^ ^ ^ {Rotation:[0f,90f],interpolation_duration:5,teleport_duration:1,Tags:["2010.Display","ProcessCommonTag","AutoKillWhenDieVehicle"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0.383f,0.924f],right_rotation:[0f,0f,0f,1f],translation:[-1.905f,-1.1f,10f],scale:[0f,0f,20f]},item:{id:"yellow_stained_glass",Count:1b}}
    summon item_display ^ ^ ^ {Rotation:[0f,90f],interpolation_duration:5,teleport_duration:1,Tags:["2010.Display","ProcessCommonTag","AutoKillWhenDieVehicle"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0.383f,0.924f],right_rotation:[0f,0f,0f,1f],translation:[1.905f,-1.1f,10f],scale:[0f,0f,20f]},item:{id:"yellow_stained_glass",Count:1b}}
    summon item_display ^ ^ ^ {Rotation:[0f,90f],interpolation_duration:5,teleport_duration:1,Tags:["2010.Display","ProcessCommonTag","AutoKillWhenDieVehicle"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0.383f,0.924f],right_rotation:[0f,0f,0f,1f],translation:[-1.905f,1.1f,10f],scale:[0f,0f,20f]},item:{id:"yellow_stained_glass",Count:1b}}
    summon item_display ^ ^ ^ {Rotation:[0f,90f],interpolation_duration:5,teleport_duration:1,Tags:["2010.Display","ProcessCommonTag","AutoKillWhenDieVehicle"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0.383f,0.924f],right_rotation:[0f,0f,0f,1f],translation:[1.905f,1.1f,10f],scale:[0f,0f,20f]},item:{id:"yellow_stained_glass",Count:1b}}
    summon item_display ^ ^ ^ {Rotation:[0f,90f],interpolation_duration:5,teleport_duration:1,Tags:["2010.Display","ProcessCommonTag","AutoKillWhenDieVehicle"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0.383f,0.924f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.2f,10f],scale:[0f,0f,20f]},item:{id:"yellow_stained_glass",Count:1b}}

# ライド処理
    execute at @s as @e[type=item_display,tag=2010.Display,distance=..0.01] run ride @s mount @e[tag=this,distance=..0.01,limit=1]
