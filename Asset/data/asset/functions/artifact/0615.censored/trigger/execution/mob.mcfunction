#> asset:artifact/0615.censored/trigger/execution/mob
#
# 雑魚モブの処刑
#
# @within function asset:artifact/0615.censored/trigger/3.main

# 演出
    execute as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..0.01,limit=1] anchored eyes positioned ^ ^ ^ run function asset:artifact/0615.censored/trigger/object_summon
    particle block redstone_block ~ ~1.5 ~ 0.5 0.5 0.5 1 30
    particle block bedrock ~ ~1.5 ~ 0.5 0.5 0.5 1 30

# 効果
    #tp ~ -30 ~
    execute as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..0.01,limit=1] run function api:mob/remove
