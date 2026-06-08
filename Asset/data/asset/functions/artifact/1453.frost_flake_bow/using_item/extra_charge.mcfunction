#> asset:artifact/1453.frost_flake_bow/using_item/extra_charge
#
#
#
# @within function asset:artifact/1453.frost_flake_bow/using_item/2.check_condition


# 演出
    execute if score @s Ffb.Charge matches 20 run playsound ui.toast.out player @s ~ ~ ~ 1 0.8
    execute if score @s Ffb.Charge matches 20 anchored eyes positioned ^ ^ ^1 run function asset:artifact/1453.frost_flake_bow/using_item/vfx/charge1

    execute if score @s Ffb.Charge matches 30 run playsound ui.toast.in player @s ~ ~ ~ 1 1.3
    execute if score @s Ffb.Charge matches 34 run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.1 2
    execute if score @s Ffb.Charge matches 30 anchored eyes positioned ^ ^ ^1 run function asset:artifact/1453.frost_flake_bow/using_item/vfx/charge1
