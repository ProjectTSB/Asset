#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/windup
#
# 予備動作
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/tick

# 攻撃予告
    data modify storage api: Argument.FieldOverride.Color set value 16732754
    data modify storage api: Argument.FieldOverride.Scale set value [15f,15f,0.01f]
    data modify storage api: Argument.FieldOverride.Tick set value 30
    data modify storage api: Argument.ID set value 2063
    execute positioned ~ ~0.1 ~ run function api:object/summon

# アニメ再生
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_melee_2_windup/tween {to_frame: 0, duration: 1}

# サウンド
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.0
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.0
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
