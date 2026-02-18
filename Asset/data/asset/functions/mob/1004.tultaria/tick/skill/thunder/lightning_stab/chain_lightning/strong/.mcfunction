#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/chain_lightning/strong/
#
# 初撃は強力
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/tick

# 対応するマーカーの方を見る
    execute if entity @s[tag=RW.ChainLightning1] facing entity @e[type=marker,tag=RW.ChainLightning2,distance=..120,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
    execute if entity @s[tag=RW.ChainLightning2] facing entity @e[type=marker,tag=RW.ChainLightning3,distance=..120,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
    execute if entity @s[tag=RW.ChainLightning3] facing entity @e[type=marker,tag=RW.ChainLightning4,distance=..120,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
    execute if entity @s[tag=RW.ChainLightning4] facing entity @e[type=marker,tag=RW.ChainLightning5,distance=..120,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
    execute if entity @s[tag=RW.ChainLightning5] facing entity @e[type=marker,tag=RW.ChainLightning6,distance=..120,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
    execute if entity @s[tag=RW.ChainLightning6] facing entity @e[type=marker,tag=RW.ChainLightning1,distance=..120,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# 場合によっては4番が最後なので
    execute if entity @s[tag=RW.ChainLightning4] unless entity @e[type=marker,tag=RW.ChainLightning5,distance=..120,sort=nearest,limit=1] facing entity @e[type=marker,tag=RW.ChainLightning1,distance=..120,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# 再帰スタート
    execute at @s run function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/chain_lightning/strong/thunder.recursive

# サウンド
    playsound minecraft:entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 1 2
    playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..32] ~ ~ ~ 1 1.5 0
