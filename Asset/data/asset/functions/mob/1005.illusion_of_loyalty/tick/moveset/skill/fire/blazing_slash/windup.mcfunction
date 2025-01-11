#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/windup
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/

# こっちを向く
    execute facing entity @p feet run tp @s ~ ~ ~ ~ 0

# モデルを自分の向きに
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] ~ ~ ~ ~ ~

# ポーズ
    execute as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/attack_magic_1_left/tween {to_frame:0,duration:1}

# サウンド
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2
