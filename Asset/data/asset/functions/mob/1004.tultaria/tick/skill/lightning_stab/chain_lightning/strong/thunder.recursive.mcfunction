#> asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/strong/thunder.recursive
#
# 再帰ビーム
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/strong/
#   asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/strong/thunder.recursive

# パーティクル
    particle firework ~ ~ ~ 0 0 0 0.3 2 force @a[distance=..60]
    particle electric_spark ~ ~ ~ 0 0 0 0.3 2 force @a[distance=..60]
    particle minecraft:dust 0.898 1 0 2 ~ ~ ~ 0.2 0.2 0.2 0 2 force @a[distance=..30]

# ダメージ判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/strong/damage

# 再帰
    execute if entity @s[tag=RW.ChainLightning1,distance=..60] unless entity @e[type=marker,tag=RW.ChainLightning2,distance=..0.5] positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/strong/thunder.recursive
    execute if entity @s[tag=RW.ChainLightning2,distance=..60] unless entity @e[type=marker,tag=RW.ChainLightning3,distance=..0.5] positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/strong/thunder.recursive
    execute if entity @s[tag=RW.ChainLightning3,distance=..60] unless entity @e[type=marker,tag=RW.ChainLightning4,distance=..0.5] positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/strong/thunder.recursive
    execute if entity @s[tag=RW.ChainLightning4,distance=..60] unless entity @e[type=marker,tag=RW.ChainLightning5,distance=..0.5] positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/strong/thunder.recursive
    execute if entity @s[tag=RW.ChainLightning5,distance=..60] unless entity @e[type=marker,tag=RW.ChainLightning.Last,distance=..0.5] positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/strong/thunder.recursive
    execute if entity @s[tag=RW.ChainLightning.Last,distance=..60] unless entity @e[type=marker,tag=RW.ChainLightning1,distance=..0.5] positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/lightning_stab/chain_lightning/strong/thunder.recursive
