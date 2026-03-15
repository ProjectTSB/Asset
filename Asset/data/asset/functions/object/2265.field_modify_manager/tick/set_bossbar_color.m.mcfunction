#> asset:object/2265.field_modify_manager/tick/set_bossbar_color.m
#
# Objectのtick時の処理
#
# @within asset:object/2265.field_modify_manager/tick/attack

# 
    $data modify storage asset:context this.BossBar.Color[$(Index)] set value '{"text":"■","color":"#5E5E5E"}'
