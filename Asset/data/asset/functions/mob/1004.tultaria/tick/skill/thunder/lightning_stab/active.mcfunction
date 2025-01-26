#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/active
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/tick

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_melee_4_active/tween {to_frame:0,duration:1}

# Tickロックして、この行動自体をループしないように1増やす
# Tickロックは移動終了時に勝手に解除される
    tag @s add RW.TickLock
    scoreboard players add @s General.Mob.Tick 1

# マーカーの方を向く
    execute facing entity @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# こっち狙いで突進
    # 速度設定
        scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 10
        scoreboard players set @s[scores={RW.Phase=2}] RW.Speed 12

    # 移動タグ付与
        tag @s add RW.Move

# ループカウント加算
    scoreboard players add @s RW.LoopCount 1

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.9
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1.4
