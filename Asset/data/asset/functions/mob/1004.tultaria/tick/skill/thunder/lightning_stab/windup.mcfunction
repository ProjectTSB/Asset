#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/tick

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_melee_4_windup/tween {to_frame:0,duration:1}

# モデルをプレイヤーに向ける
    execute as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] facing entity @p[gamemode=!spectator,distance=..128] eyes run tp @s ~ ~ ~ ~ 0

# 雷撃マーカー設置
    summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning1"]}

# 幻影への指示
    function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/thunder/thunder

# 演出
    particle minecraft:dust 0.878 1 0.333 1.5 ~ ~1 ~ 0.5 0.8 0.5 0 50 force @a[distance=..30]
    particle minecraft:instant_effect ~ ~1 ~ 0.3 0.8 0.3 0 25 force @a[distance=..30]
    playsound ogg:block.respawn_anchor.charge3 hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.guardian.death hostile @a ~ ~ ~ 2 2
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2

# アイテム指定
    item replace entity @e[type=item_display,tag=RW.Model.RightHandItem,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20074}
