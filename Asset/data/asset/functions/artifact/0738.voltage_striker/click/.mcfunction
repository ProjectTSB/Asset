#> asset:artifact/0738.voltage_striker/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/738/click/


# 演出
    playsound item.trident.riptide_1 player @a ~ ~ ~ 0.6 2 0
    playsound item.trident.riptide_1 player @a ~ ~ ~ 0.6 1.5 0
    playsound entity.illusioner.prepare_mirror player @a ~ ~ ~ 0.5 2 0
    playsound entity.illusioner.prepare_mirror player @a ~ ~ ~ 0.5 1.6 0

# 弾を5回召喚する
    execute anchored eyes positioned ^ ^-0.35 ^0.3 run function asset:artifact/0738.voltage_striker/click/4.summon_bullet
    execute anchored eyes positioned ^ ^-0.35 ^0.3 run function asset:artifact/0738.voltage_striker/click/4.summon_bullet
    execute anchored eyes positioned ^ ^-0.35 ^0.3 run function asset:artifact/0738.voltage_striker/click/4.summon_bullet
    execute anchored eyes positioned ^ ^-0.35 ^0.3 run function asset:artifact/0738.voltage_striker/click/4.summon_bullet
    execute anchored eyes positioned ^ ^-0.35 ^0.3 run function asset:artifact/0738.voltage_striker/click/4.summon_bullet

# ループ開始
    schedule function asset:artifact/0738.voltage_striker/click/bullet/loop 1t replace