#> asset:mob/1004.tultaria/tick/skill/lightning_stab/tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active


# 雷撃マーカーへのコマンド
    execute at @e[type=marker,tag=RW.ChainLightning.Common] run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/marker

# 最初の構え
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/windup

# 構えずターゲッティング(最初に実行)
    execute if score @s[scores={RW.LoopCount=0}] RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/targeting_first

# 構えてターゲッティング(ループ以降から実行)
    execute if score @s[scores={RW.LoopCount=1..}] RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/targeting

# 突き
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/active
    # 突き部分のダメージ
        execute if score @s RW.Tick matches 21 positioned ^ ^ ^1 as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function asset:mob/1004.tultaria/tick/skill/lightning_stab/stab/damage
    # 突きのエフェクト
        execute if score @s RW.Tick matches 0..25 positioned ^ ^ ^1 at @e[type=marker,tag=RW.ModelLocator.Sword,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/skill/lightning_stab/stab/vfx

# 何度か斬る
    execute if score @s[scores={RW.Phase=1}] RW.Tick matches 22 run scoreboard players set @s[scores={RW.LoopCount=..2}] RW.Tick 7
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 22 run scoreboard players set @s[scores={RW.LoopCount=..4}] RW.Tick 7

# 埋まりそうになったら移動をやめる
    execute at @s[scores={RW.Tick=21}] positioned ~ ~0.5 ~ unless block ^ ^ ^2 #lib:no_collision run function asset:mob/1004.tultaria/tick/skill/lightning_stab/stop

# 最後の一個を設置
    execute if score @s[scores={RW.Phase=1}] RW.Tick matches 25 run summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning4"]}
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 25 run summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning6"]}

# 設置と同時にこっちを向く
    execute if score @s[scores={RW.Phase=1}] RW.Tick matches 25 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~0.5 ~ ~ 0
    execute if score @s[scores={RW.Phase=1}] RW.Tick matches 25 facing entity @p feet run tp @s ~ ~ ~ ~ ~

# 雷撃発動アニメ
    execute if score @s RW.Tick matches 25 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_melee_2/play

# 雷撃発動演出
    execute if score @s RW.Tick matches 33 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/slash

# 雷撃
    # 初撃は強い
        execute if score @s RW.Tick matches 33 as @e[type=marker,tag=RW.ChainLightning.Common] at @s run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/strong/
    # 持続は弱い
        execute if score @s RW.Tick matches 34..40 as @e[type=marker,tag=RW.ChainLightning.Common] at @s run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/weak/

# 雷撃を片付ける
    execute if score @s RW.Tick matches 40 run kill @e[type=marker,tag=RW.ChainLightning.Common,distance=..300]

# リセット
    execute if score @s RW.Tick matches 60.. run function asset:mob/1004.tultaria/tick/base_move/reset
