#> asset:artifact/1163.rail_shooter/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1163.rail_shooter/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.wither.shoot player @a ~ ~ ~ 0.3 1.6 0
    playsound tsb_sounds:masket_shot player @a ~ ~ ~ 0.5 1
    playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 1 0.7
    execute if entity @s[tag=WB.FullCharge] run playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 1 0.4
    execute if entity @s[tag=WB.FullCharge] run playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 1 0

    execute anchored eyes positioned ^-0.35 ^-0.15 ^ run particle smoke ~ ~ ~ 0 0 0 0.07 2
    execute if entity @s[tag=WB.FullCharge] anchored eyes positioned ^-0.35 ^-0.15 ^ run particle soul_fire_flame ~ ~ ~ 0 0 0 0.07 10
    execute if entity @s[tag=WB.FullCharge] anchored eyes positioned ^-0.35 ^-0.15 ^ run particle explosion ~ ~ ~ 0 0 0 0 0

# 発砲
    execute anchored eyes positioned ^-0.35 ^-0.15 ^ facing ^ ^ ^30 run function asset:artifact/1163.rail_shooter/trigger/shoot
    tag @s remove Landing
