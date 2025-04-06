#> asset:mob/0411.behemoth/init/locator
#
# 初期化処理 Aj関連
#
# @within asset:mob/0411.behemoth/init/animated_java

# Locatorに以下処理を実行する
    data merge entity @s {CustomName:'{"text":"『焔竜』","color":"#8AB9FF","italic":false}',Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",PersistenceRequired :1b,Attributes:[{Name:"generic.max_health",Base:1024d}]}
    scoreboard players operation @s ForwardTargetMobUUID = @e[tag=BF.EntityRoot,limit=1] MobUUID
    tag @s add Enemy
    tag @s add Enemy.Boss
    tag @s add ExtendedCollision
    tag @s add AlwaysInvisible
    tag @s add ProcessCommonTag
    # effect give @s instant_health infinite 0 true

# 常に耐性付与
    effect give @s resistance infinite 2 true
