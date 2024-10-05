#> asset:artifact/1065.magic_bullet/trigger/6.summon_square.m
#
# 魔法陣の召喚処理
#
# @input args:
#    Rotation: double @ 2
#
# @within function
#   asset:artifact/1065.magic_bullet/trigger/3.main
#   asset:artifact/1065.magic_bullet/trigger/4.aim_to_player

# 何個目の魔法陣か数える
    scoreboard players add $SquareCount Temporary 1

# マクロで向きを合わせた状態で召喚
    $summon item_display ~ ~ ~ {Rotation:$(Rotation),Tags:["TL.Square","TL.LoopTarget","TL.Init"],brightness:{sky:15,block:15},interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20351}}}

# 魔法陣へ何個目かのスコアを入れる
    scoreboard players operation @e[type=item_display,tag=TL.Init,distance=..0.01,sort=nearest,limit=1] TL.SquareCount = $SquareCount Temporary

# OwnerIDを設定
    scoreboard players operation @e[type=item_display,tag=TL.Init,distance=..0.01,sort=nearest,limit=1] TL.OwnerID = @s UserID

# ターゲットにされたプレイヤーがいる状態でかつ、1個目の魔法陣なら弾のワープ先用のTagを付与
    execute if entity @p[tag=TL.TargetPlayer] if score $SquareCount Temporary matches 1 run tag @e[type=item_display,tag=TL.Init,distance=..0.01,sort=nearest,limit=1] add TL.TeleportPosition

# InitTag削除
    tag @e[type=item_display,tag=TL.Init,distance=..0.01,sort=nearest,limit=1] remove TL.Init

# 4以上ならリセットしておく
    execute if score $SquareCount Temporary matches 4.. run scoreboard players reset $SquareCount Temporary
