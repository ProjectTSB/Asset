#> asset:mob/0456.gargo_ex_machina/init/locator
#
# 初期化処理 Aj関連
#
# @within asset:mob/0456.gargo_ex_machina/init/animated_java.m

# slime以外では実行しない
    execute unless entity @s[type=slime] run return 0

# Locatorに以下処理を実行する
    data merge entity @s {CustomName:'{"text":"絡繰仕掛の石像","italic":false}',Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",PersistenceRequired :1b,Attributes:[{Name:"generic.max_health",Base:1024d}],ArmorDropChances:[0.000f,0.000f,0.000f,0.000f]}
    scoreboard players operation @s ForwardTargetMobUUID = @e[type=slime,tag=CO.EntityRoot,limit=1] MobUUID
    tag @s add Enemy
    tag @s add Enemy.Boss
    tag @s add ExtendedCollision
    tag @s add AlwaysInvisible
    tag @s add ProcessCommonTag
    tag @s add CO.Hitbox
    # effect give @s instant_health infinite 0 true
