#> asset:object/2265.field_modify_manager/init/decide_color
#
# Objectのtick時の処理
#
# @within asset:object/2265.field_modify_manager/init/
# @private
    #declare score_holder $Temp.Count

# 決定用AEC召喚
    summon area_effect_cloud ~ ~ ~ {Tags:["2265.Aec","2265.Aec.Red"]}
    summon area_effect_cloud ~ ~ ~ {Tags:["2265.Aec","2265.Aec.Blue"]}
    summon area_effect_cloud ~ ~ ~ {Tags:["2265.Aec","2265.Aec.Green"]}
    summon area_effect_cloud ~ ~ ~ {Tags:["2265.Aec","2265.Aec.Yellow"]}

# 決定処理
    data modify storage asset:context this.Target set value []
    data modify storage asset:context this.BossBar.Color set value []
    execute if score $Temp.Count 2265.AttackCount matches 1.. run function asset:object/2265.field_modify_manager/init/decide_color_loop

# 終了
    kill @e[type=area_effect_cloud,tag=2265.Aec,distance=..10]
