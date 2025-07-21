#> asset:object/2174.heiloang_death_animation/tick/summon_bossdrop
#
# Objectのtick時の処理
#
# @within asset:object/2174.heiloang_death_animation/tick/

# ボスドロップ配置
    data modify storage asset:temp 2174.Pos.X set from storage asset:context this.Pos[0]
    data modify storage asset:temp 2174.Pos.Y set from storage asset:context this.Pos[1]
    data modify storage asset:temp 2174.Pos.Z set from storage asset:context this.Pos[2]
    function asset:object/2174.heiloang_death_animation/tick/summon_bossdrop.m with storage asset:temp 2174.Pos
    data remove storage asset:temp 2174
