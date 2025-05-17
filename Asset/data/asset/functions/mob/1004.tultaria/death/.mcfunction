#> asset:mob/1004.tultaria/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/1004/death

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 0.7
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 0.8
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 0.9
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 4 1.5
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 4 1.6
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 4 1.7

# 落下中のプレイヤーがいたら中心に置く
    execute at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..64,limit=1] positioned ~-50 ~-14 ~-50 run tp @a[dx=100,dy=10,dz=100] ~ ~ ~

# 画面エフェクト
    title @a[distance=..64] times 0 5 10
    title @a[distance=..64] title {"text":""}
    title @a[distance=..64] subtitle {"text":"\uE010","font":"screen_effect","color":"#CCCCCC"}

# 足場を元に戻す
    execute at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..64,limit=1] run function asset:mob/1004.tultaria/tick/reset_arena

# 撃破演出用オブジェクトを召喚
    data modify storage api: Argument.ID set value 2056
    data modify storage api: Argument.FieldOverride.Pos.X set from entity @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] Pos[0]
    data modify storage api: Argument.FieldOverride.Pos.Y set from entity @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] Pos[1]
    data modify storage api: Argument.FieldOverride.Pos.Z set from entity @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..100,sort=nearest,limit=1] Pos[2]
    execute facing entity @p[distance=..64] eyes run function api:object/summon

# オブジェクト類のキル
    function asset:mob/1004.tultaria/tick/reset/remove_objects
    kill @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1]

# 「忠誠の幻影」がいたら消す
    execute as @e[type=wither_skeleton,scores={MobID=1005},distance=..64] run function api:mob/kill

# モデルを消す
    execute as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/remove/this

# Super!
    function asset:mob/super.death
