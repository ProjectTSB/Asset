#> asset:mob/0411.behemoth/init/locator
#
# 初期化処理 Aj関連
#
# @within asset:mob/0411.behemoth/init/animated_java

# Locatorに以下処理を実行する
    data merge entity @s {CustomName:'{"text":"『焔竜』","color":"#8AB9FF","italic":false}',Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",PersistenceRequired :1b,Attributes:[{Name:"generic.max_health",Base:1024d}],ArmorDropChances:[0.000f,0.000f,0.000f,0.000f]}
    scoreboard players operation @s ForwardTargetMobUUID = @e[type=slime,tag=BF.EntityRoot,limit=1] MobUUID
    tag @s add Enemy
    tag @s add Enemy.Boss
    tag @s add ExtendedCollision
    tag @s add AlwaysInvisible
    tag @s add ProcessCommonTag

# 常に耐性付与
    data modify storage api: Argument set value {ID:150,Duration:2147483647,Stack:2}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
    # effect give @s resistance infinite 2 true
