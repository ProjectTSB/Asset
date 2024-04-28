#> asset:artifact/1038.flame_devil_head/trigger/hurt/3.mp_heal
#
# 被弾時、MPを少量回復する
#
# @within function asset:artifact/1038.flame_devil_head/trigger/hurt/2.cooldown

# 現在時間を保存
    execute store result score @s SU.CoolDown run time query gametime

# MP回復
    scoreboard players set $Fluctuation Lib 20
    function lib:mp/fluctuation

# 演出
    particle dust 100000000 1 0 0.75 ~ ~0.9 ~0 0.5 1.0 0.5 0.0 20 normal
    playsound block.conduit.deactivate player @s ~ ~ ~ 1.0 2 0.0