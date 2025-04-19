#> asset:object/2056.tultaria_death/tick/end
#
# 最後の演出
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

# ドロップ
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id

# 画面エフェクト
    title @a[distance=..64] times 5 15 20
    title @a[distance=..64] title {"text":""}
    title @a[distance=..64] subtitle {"text":"\uE010","font":"screen_effect","color":"#CCCCCC"}

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[7f,64f,7f],Color:16777215,DisappearInterpolation:10,LifeTime:60}
    execute positioned ~ ~32 ~ rotated ~ 90 run function api:object/summon

# 消滅
    kill @s

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_tultaria",Active:false},{Datapack:"AJ_illusion_of_loyalty",Active:false}]
    function asset:datapack/set_activation_state
