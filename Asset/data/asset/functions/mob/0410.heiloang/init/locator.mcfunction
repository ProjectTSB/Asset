#> asset:mob/0410.heiloang/init/locator
#
# 初期化処理 Aj関連
#
# @within asset:mob/0410.heiloang/init/animated_java

# Locatorに以下処理を実行する
    scoreboard players operation @s ForwardTargetMobUUID = @e[tag=BE.EntityRoot,limit=1] MobUUID
    tag @s add Enemy
    tag @s add Enemy.Boss
    tag @s add AlwaysInvisible
    tag @s add AllowProcessingCommonTag
    # effect give @s instant_health infinite 0 true
