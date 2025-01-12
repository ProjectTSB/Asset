#> asset:object/2116.heiloang_ehd_thunder/tick/particle
#
# Objectのtick時の処理
#
# @within asset:object/2116.heiloang_ehd_thunder/tick/

# 演出
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 2 0.7
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 1
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 0.7
    particle firework ~ ~1 ~ 3 1 3 0.1 30 force
    particle dust 1 0.855 0.376 4 ~ ~1 ~ 3 1 3 0.1 10 force
    particle flash ~ ~1 ~ 3 1 3 0.1 5 force
    data modify storage api: Argument.ID set value 2120
    execute positioned ~ ~ ~ run function api:object/summon

# 終了
    kill @s
