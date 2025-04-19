#> asset:object/2180.tiamat_pillar/tick/tick_kill
#
# Objectのtick時の処理
#
# @within asset:object/2180.tiamat_pillar/tick/

# 攻撃予告
    execute if entity @s[tag=!2180.Pillar.Thunder.1,tag=!2180.Pillar.Thunder.2,scores={General.Object.Tick=1}] run scoreboard players set @s General.Object.Tick 40
    execute if entity @s[scores={General.Object.Tick=2}] run function asset:object/2180.tiamat_pillar/tick/prediction

# 消滅
    execute if entity @s[scores={General.Object.Tick=40..}] run function asset:object/2180.tiamat_pillar/tick/kill
