#> asset:mob/0412.tiamat/init/locator
#
# 初期化処理 Aj関連
#
# @within asset:mob/0412.tiamat/init/animated_java

# Locatorに以下処理を実行する
    data merge entity @s {CustomName:'{"text":"『闇竜』","color":"#CB8FFF","italic":false}',Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",PersistenceRequired :1b,Attributes:[{Name:"generic.max_health",Base:1024d}],ArmorDropChances:[0.000f,0.000f,0.000f,0.000f]}
    scoreboard players operation @s ForwardTargetMobUUID = @e[type=slime,tag=BG.EntityRoot,limit=1] MobUUID
    tag @s add Enemy
    tag @s add Enemy.Boss
    tag @s add ExtendedCollision
    tag @s add AlwaysInvisible
    tag @s add ProcessCommonTag
    # effect give @s instant_health infinite 0 true

# # 常に耐性付与
#     effect give @s resistance infinite 2 true
