#> asset:mob/0341.louvert/summon/3.init
#
# 召喚時の初期化処理
#
# @within function asset:mob/0341.louvert/summon/2.summon

# 耐性付与
    # ノーマルなら lv5
        execute if predicate api:global_vars/difficulty/max/normal run effect give @s resistance infinite 4 true
    # ハードなら lv6
        execute if predicate api:global_vars/difficulty/min/hard run effect give @s resistance infinite 5 true
    ## デバッグコマンド
        execute if data storage global {IsProduction:0b} run effect give @s resistance infinite 9 true

# スコア初期化
    scoreboard players set @s 9H.AnimationTick 0
    scoreboard players set @s 9H.AnimationNum 121
    scoreboard players set @s 9H.SkillSelect 0

# animated javaモデル召喚
    execute positioned ~ ~500 ~ rotated ~ 0 run function animated_java:louvert/summon