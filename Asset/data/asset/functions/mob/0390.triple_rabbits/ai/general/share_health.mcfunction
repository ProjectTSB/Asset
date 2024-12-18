#> asset:mob/0390.triple_rabbits/ai/general/share_health
#
# 体力を共有する
#
# @within function asset:mob/0390.triple_rabbits/tick/

# まずは対象の体力を取得
    scoreboard players operation $AU.Temp AU.Dummy.UUID = @s AU.Dummy.UUID
    execute as @e[type=wither_skeleton,tag=AU.Target,distance=..100] if score @s AU.Dummy.UUID = $AU.Temp AU.Dummy.UUID run scoreboard players operation $AU.Temp MobHealth = @s MobHealth

# 体力を変更する
    scoreboard players operation @s MobHealth = $AU.Temp MobHealth
    scoreboard players operation @s MobHealth > $1 Const

# リセット
    scoreboard players reset $AU.Temp AU.Dummy.UUID
    scoreboard players reset $AU.Temp MobHealth
