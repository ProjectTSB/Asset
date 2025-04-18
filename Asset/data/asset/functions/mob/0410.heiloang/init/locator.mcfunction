#> asset:mob/0410.heiloang/init/locator
#
# 初期化処理 Aj関連
#
# @within asset:mob/0410.heiloang/init/animated_java

# Locatorに以下処理を実行する
    data merge entity @s {CustomName:'{"text":"『黒龍』","italic":false}',Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",PersistenceRequired :1b,Attributes:[{Name:"generic.max_health",Base:1024d}]}
    scoreboard players operation @s ForwardTargetMobUUID = @e[type=slime,tag=BE.EntityRoot,limit=1] MobUUID
    tag @s add Enemy
    tag @s add Enemy.Boss
    tag @s add ExtendedCollision
    tag @s add AlwaysInvisible
    tag @s add ProcessCommonTag
    tag @s add BE.Hitbox
    # effect give @s instant_health infinite 0 true
