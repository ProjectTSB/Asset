#> asset:object/2265.field_modify_manager/init/decide_color_loop
#
# Objectのtick時の処理
#
# @within asset:object/2265.field_modify_manager/init/decide_color
# @private
    #declare score_holder $Temp.Count

# デクリメント
    scoreboard players remove $Temp.Count 2265.AttackCount 1

# ランダムに1つ取り出し、storageに保管
    tag @e[type=area_effect_cloud,tag=2265.Aec,distance=..10,sort=random,limit=1] add 2265.Aec.Target
    execute if entity @e[type=area_effect_cloud,tag=2265.Aec.Target,tag=2265.Aec.Red,distance=..10,limit=1] run data modify storage asset:context this.Target append value 0
    execute if entity @e[type=area_effect_cloud,tag=2265.Aec.Target,tag=2265.Aec.Blue,distance=..10,limit=1] run data modify storage asset:context this.Target append value 1
    execute if entity @e[type=area_effect_cloud,tag=2265.Aec.Target,tag=2265.Aec.Green,distance=..10,limit=1] run data modify storage asset:context this.Target append value 2
    execute if entity @e[type=area_effect_cloud,tag=2265.Aec.Target,tag=2265.Aec.Yellow,distance=..10,limit=1] run data modify storage asset:context this.Target append value 3
    execute if entity @e[type=area_effect_cloud,tag=2265.Aec.Target,tag=2265.Aec.Red,distance=..10,limit=1] run data modify storage asset:context this.BossBar.Color append value '{"text":"■","color":"red"}'
    execute if entity @e[type=area_effect_cloud,tag=2265.Aec.Target,tag=2265.Aec.Blue,distance=..10,limit=1] run data modify storage asset:context this.BossBar.Color append value '{"text":"■","color":"blue"}'
    execute if entity @e[type=area_effect_cloud,tag=2265.Aec.Target,tag=2265.Aec.Green,distance=..10,limit=1] run data modify storage asset:context this.BossBar.Color append value '{"text":"■","color":"green"}'
    execute if entity @e[type=area_effect_cloud,tag=2265.Aec.Target,tag=2265.Aec.Yellow,distance=..10,limit=1] run data modify storage asset:context this.BossBar.Color append value '{"text":"■","color":"gold"}'
    kill @e[type=area_effect_cloud,tag=2265.Aec.Target,distance=..10]

# 繰り返す
    execute if score $Temp.Count 2265.AttackCount matches 1.. run data modify storage asset:context this.BossBar.Color append value '{"text":"->","color":"white"}'
    execute if score $Temp.Count 2265.AttackCount matches 1.. run function asset:object/2265.field_modify_manager/init/decide_color_loop
