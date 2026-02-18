#> asset:mob/1004.tultaria/tick/intro/battle_start
#
# 戦闘開始する
#
# @within function asset:mob/1004.tultaria/tick/intro/tick

# 画面エフェクト
    title @a[distance=..64] times 0 5 2
    title @a[distance=..64] title {"text":""}
    title @a[distance=..64] subtitle {"text":"\uE010","font":"screen_effect","color":"#CCCCCC"}

# 演出
    execute as @a[distance=..64] at @s run playsound minecraft:item.trident.return hostile @s ~ ~ ~ 3 0.6
    execute as @a[distance=..64] at @s run playsound minecraft:entity.evoker.cast_spell hostile @s ~ ~ ~ 3 1.5
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 50 normal

# アニメ再生
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_right/tween {to_frame:0,duration:1}

# タグ調整
    tag @s remove RW.Opening

# フェイズ加算
    scoreboard players add @s RW.Phase 1

# 無敵解除
    data modify entity @s Invulnerable set value 0b

# スコアセット
    scoreboard players set @s General.Mob.Tick -40
    scoreboard players set @s RW.LoopCount 0

# 移動する
#    scoreboard players set @s RW.Speed 5
#    function asset:mob/1004.tultaria/tick/base_move/reset
