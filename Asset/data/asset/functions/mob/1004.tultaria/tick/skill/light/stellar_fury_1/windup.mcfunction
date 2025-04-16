#> asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tick

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_2_right/tween {to_frame:0,duration:1}

# アイテム指定
    item replace entity @e[type=item_display,tag=RW.Model.RightHandItem,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20075}
