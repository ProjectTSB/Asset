#> asset:object/1067.jewel_rod_of_horai/tick/attack/particle_attack
#
# @within function asset:object/1067.jewel_rod_of_horai/tick/

# 攻撃対象への攻撃パーティクル
    execute if score $MS.AttackLevel Temporary matches 3.. positioned ^0 ^1 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:object/1067.jewel_rod_of_horai/tick/attack/particle_beam_blue
    execute if score $MS.AttackLevel Temporary matches 1.. positioned ^0.95106 ^0.30902 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:object/1067.jewel_rod_of_horai/tick/attack/particle_beam_red
    execute if score $MS.AttackLevel Temporary matches 2.. positioned ^0.58779 ^-0.80902 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:object/1067.jewel_rod_of_horai/tick/attack/particle_beam_yellow
    execute if score $MS.AttackLevel Temporary matches 4.. positioned ^-0.58779 ^-0.80902 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:object/1067.jewel_rod_of_horai/tick/attack/particle_beam_green
    execute if score $MS.AttackLevel Temporary matches 4.. positioned ^-0.95106 ^0.30902 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:object/1067.jewel_rod_of_horai/tick/attack/particle_beam_purple
