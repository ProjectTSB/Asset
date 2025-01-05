#> asset:object/2056.tultaria_death/tick/end
#
#
#
# @within function asset:object/2056.tultaria_death/tick/

# モデルを消す
    execute as @e[type=item_display,tag=RW.ModelRoot,distance=..8,limit=1] run function animated_java:tultaria/remove/this

# 演出
    playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 4 2
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 4 0.7
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 4 1
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 0.7
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 1
    particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[distance=..30]
    particle minecraft:poof ~ ~1 ~ 1 1 1 0.1 50
    particle minecraft:end_rod ~ ~1 ~ 0.2 0.2 0.2 0.6 200

# 画面エフェクト
    title @a[distance=..64] times 5 15 20
    title @a[distance=..64] title {"text":""}
    title @a[distance=..64] subtitle {"text":"\uE010","font":"screen_effect","color":"#CCCCCC"}

# 消滅
    kill @s
