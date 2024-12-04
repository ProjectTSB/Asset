#> asset:artifact/0837.the_world_knife/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/837/click/


# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 1
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 1

# 敵を狙う処理
    execute anchored eyes positioned ^ ^ ^2 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..4,sort=random,limit=1] add N9.Target
# 弾を召喚（敵がいる場合）
    execute anchored eyes positioned ^ ^ ^2 if entity @e[type=#lib:living,tag=N9.Target,distance=..4,limit=1] at @e[type=#lib:living,tag=N9.Target,distance=..4,limit=1] run function asset:artifact/0837.the_world_knife/click/knife/summon/surround
# 弾を召喚 (敵がいない場合)
    execute anchored eyes positioned ^ ^ ^2 unless entity @e[type=#lib:living,tag=N9.Target,distance=..4,limit=1] positioned ^ ^ ^-2 positioned ~ ~-0.7 ~ run function asset:artifact/0837.the_world_knife/click/knife/summon/forward
# タグついたやつに鈍足
    effect give @e[type=#lib:living,tag=N9.Target,distance=..30,limit=1] slowness 2 50 true
# タグを消す
    tag @e[type=#lib:living,tag=N9.Target,distance=..30,limit=1] remove N9.Target

# Scheduleループ
    schedule function asset:artifact/0837.the_world_knife/click/knife/1.tick 1t replace
