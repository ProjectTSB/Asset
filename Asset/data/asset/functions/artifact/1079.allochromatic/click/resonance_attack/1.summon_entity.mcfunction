#> asset:artifact/1079.allochromatic/click/resonance_attack/1.summon_entity
#
# 共鳴攻撃用entityを召喚する
#
# @within function asset:artifact/1079.allochromatic/click/9.resonance_cooldown

# 共鳴攻撃用entityを召喚する
    summon marker ~ ~ ~ {Tags:["TZ.AttackEntity","Init","Uninterferable"]}

# Init処理
    execute as @e[type=marker,tag=TZ.AttackEntity,tag=Init,distance=..0.01,limit=1] run function asset:artifact/1079.allochromatic/click/resonance_attack/2.init

# スケジュールループ
    schedule function asset:artifact/1079.allochromatic/click/resonance_attack/3.loop 1t replace