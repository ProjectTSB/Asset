#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/break
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/fall

    execute positioned ~ ~ ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~1 ~ ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~-1 ~ ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~ ~ ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~1 ~ ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~-1 ~ ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~ ~ ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~1 ~ ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
