#> asset:artifact/1065.magic_bullet/trigger/5.summon_square.m
#
#
#
# @within function asset:artifact/1065.magic_bullet/trigger/3.main

# 何個目の魔法陣か数える
    scoreboard players add $SquareCount Temporary 1

# マクロで向きを合わせた状態で召喚
    $summon item_display ~ ~ ~ {Rotation:$(Rotation),Tags:["TL.Square","TL.LoopTarget","TL.Init"],brightness:{sky:15,block:15},interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20351}}}

# 魔法陣へスコアを入れる
    scoreboard players operation @e[type=item_display,tag=TL.Init,distance=..0.01,sort=nearest,limit=1] TL.SquareCount = $SquareCount Temporary

# InitTag削除
    tag @e[type=item_display,tag=TL.Init,distance=..0.01,sort=nearest,limit=1] remove TL.Init
