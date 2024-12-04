#> asset:artifact/1038.flame_devil_head/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1038/damage_entity/

# MP回復
    scoreboard players set $Fluctuation Lib 20
    function lib:mp/fluctuation

# 演出
    particle dust 100000000 1 0 0.75 ~ ~0.9 ~0 0.5 1.0 0.5 0.0 20 normal
    playsound block.conduit.deactivate player @s ~ ~ ~ 1.0 2 0.0
