#> asset:object/2059.thunder_curtain/tick/thunder1
#
# 雷1
#
# @within function asset:object/2059.thunder_curtain/tick/

# サウンド演出
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.1 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.1 0 0
    execute positioned ^4.5 ^ ^ run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.1 2 0
    execute positioned ^4.5 ^ ^ run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.1 0 0
    execute positioned ^-4.5 ^ ^ run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.1 2 0
    execute positioned ^-4.5 ^ ^ run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.1 0 0

# 雷を落とす
    function asset:object/2059.thunder_curtain/tick/thunder2
    execute positioned ^1.5 ^ ^ run function asset:object/2059.thunder_curtain/tick/thunder2
    execute positioned ^3 ^ ^ run function asset:object/2059.thunder_curtain/tick/thunder2
    execute positioned ^4.5 ^ ^ run function asset:object/2059.thunder_curtain/tick/thunder2
    execute positioned ^-1.5 ^ ^ run function asset:object/2059.thunder_curtain/tick/thunder2
    execute positioned ^-3 ^ ^ run function asset:object/2059.thunder_curtain/tick/thunder2
    execute positioned ^-4.5 ^ ^ run function asset:object/2059.thunder_curtain/tick/thunder2
