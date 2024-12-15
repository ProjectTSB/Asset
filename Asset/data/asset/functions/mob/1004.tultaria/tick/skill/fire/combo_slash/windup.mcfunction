#> asset:mob/1004.tultaria/tick/skill/fire/combo_slash/windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/tick

# こっちを向く
    execute facing entity @p feet run tp @s ~ ~ ~ ~ 0

# モデルを自分の向きに
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] ~ ~ ~ ~ ~

# ポーズ
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/pause_all
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_left/play

# サウンド
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2
