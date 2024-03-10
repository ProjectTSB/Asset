#> asset:artifact/1078.pigeon_blood/trigger/resonance_attack/1.summon_entity
#
# 共鳴攻撃用entityを召喚する
#
# @within function asset:artifact/1078.pigeon_blood/trigger/3.main

# 共鳴攻撃用entityを召喚する
    summon marker ~ ~ ~ {Tags:["TY.AttackEntity","Init","Uninterferable"]}

# entityのInit処理
    execute as @e[type=marker,tag=Init,tag=TY.AttackEntity,distance=..0.01] run function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/2.entity_init

# スケジュールループ
    schedule function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/3.loop 1t replace