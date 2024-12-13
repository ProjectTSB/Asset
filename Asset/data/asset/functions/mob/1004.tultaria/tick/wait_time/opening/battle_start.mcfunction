#> asset:mob/1004.tultaria/tick/wait_time/opening/battle_start
#
# 戦闘開始する
#
# @within function asset:mob/1004.tultaria/tick/wait_time/opening/tick

# 画面エフェクト
    title @a[distance=..64] times 0 5 2
    title @a[distance=..64] title {"text":""}
    title @a[distance=..64] subtitle {"text":"\uE010","font":"screen_effect","color":"#CCCCCC"}

# 演出
    execute at @a[distance=..64] run playsound minecraft:item.trident.return hostile @p ~ ~ ~ 3 0.6
    execute at @a[distance=..64] run playsound minecraft:entity.evoker.cast_spell hostile @p ~ ~ ~ 3 1.5
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 50 normal

# タグ調整
    tag @s remove RW.Opening

# フェイズ加算
    scoreboard players add @s RW.Phase 1

# 無敵解除
    data modify entity @s Invulnerable set value 0b

# スコアセット
    scoreboard players reset @s General.Mob.Tick
    scoreboard players set @s RW.LoopCount 0
    scoreboard players set @s RW.SwordCount 0

# 移動する
    scoreboard players set @s RW.Speed 5
    function asset:mob/1004.tultaria/tick/base_move/reset
