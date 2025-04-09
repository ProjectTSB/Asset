#> asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/tick

# こっちを向く
    execute facing entity @p[gamemode=!spectator,distance=..128] feet run tp @s ~ ~ ~ ~ 0

# モデルを自分の向きに
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] ~ ~ ~ ~ ~

# ポーズ
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/pause_all
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_left/tween {to_frame:0,duration:1}

# サウンド
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2

# アイテム指定
    item replace entity @e[type=item_display,tag=RW.Model.RightHandItem,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20074}
