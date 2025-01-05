#> asset:mob/0327.eclael/init/
# @within asset:mob/alias/327/init

# 継承元の処理実行
    function asset:mob/super.init

# スコア初期化
    scoreboard players set @s 93.AnimationTimer 0
    scoreboard players set @s 93.ActionCount 0
    scoreboard players set @s 93.DamageIntervalTimer 0

# 中心点召喚
    summon marker ~ ~2 ~ {Tags:["93.Marker.SpawnPoint"]}

# animated javaモデル召喚
    execute positioned ~ ~-100 ~ rotated ~ 0 run function animated_java:eclael/summon {args:{}}

# 登場演出再生
    tag @s add 93.Skill.Former.Start
