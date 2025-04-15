#> asset:object/1114.butterfly_attack/tick/5/
#
#
#
# @within function asset:object/1114.butterfly_attack/tick/

# 5の1段目
    execute if score @s General.Object.Tick matches 1 run function asset:object/1114.butterfly_attack/tick/5/1/1
    execute if score @s General.Object.Tick matches 2 run function asset:object/1114.butterfly_attack/tick/5/1/2
    execute if score @s General.Object.Tick matches 3 run function asset:object/1114.butterfly_attack/tick/5/1/3

# OwnerへTP
    execute if score @s General.Object.Tick matches 4 run function asset:object/1114.butterfly_attack/tick/5/tp_to_owner

# ダメージ
    execute if score @s General.Object.Tick matches 4 at @s run function asset:object/1114.butterfly_attack/tick/5/damage/

# 5の2段目
    execute if score @s General.Object.Tick matches 4 at @s positioned ^0.1 ^-0.2 ^ rotated ~15 ~ run function asset:object/1114.butterfly_attack/tick/5/2/1
    execute if score @s General.Object.Tick matches 5 positioned ^0.1 ^-0.2 ^ rotated ~15 ~ run function asset:object/1114.butterfly_attack/tick/5/2/2
    execute if score @s General.Object.Tick matches 6 positioned ^0.1 ^-0.2 ^ rotated ~15 ~ run function asset:object/1114.butterfly_attack/tick/5/2/3
