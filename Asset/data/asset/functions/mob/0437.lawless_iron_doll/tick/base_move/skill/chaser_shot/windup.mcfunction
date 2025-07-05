#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/windup
#
# 予備動作
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/tick

# アニメ再生
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_ranged_2_windup/tween {to_frame: 0, duration: 1}

# サウンド
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.0
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.0
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5

# 付近のプレイヤーをランダムに選択して、近くにオブジェクトを出すためのマーカーを置く
    execute at @p[gamemode=!spectator,distance=..32,sort=random] positioned ~ ~1 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon/marker
    execute at @p[gamemode=!spectator,distance=..32,sort=random] positioned ~ ~1 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon/marker
    execute at @p[gamemode=!spectator,distance=..32,sort=random] positioned ~ ~1 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon/marker

# 難易度による追加など
    # ハード
        execute if predicate api:global_vars/difficulty/min/2_hard positioned ~ ~1 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon/marker
    # Blessless
        execute if predicate api:global_vars/difficulty/min/3_blessless positioned ~ ~1 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/summon/marker
