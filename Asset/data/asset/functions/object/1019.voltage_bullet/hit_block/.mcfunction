#> asset:object/1019.voltage_bullet/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1019/hit_block

# General.Object.Tickによって挙動を変える
# ..5 MovePerStepを0に
# 14.. 消滅
    execute if score @s General.Object.Tick matches ..5 run data modify storage asset:context this.MovePerStep set value 0
    execute if score @s General.Object.Tick matches 14.. run function asset:object/call.m {method:kill}
