#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/block_break
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/charge_tick

    execute positioned ~ ~ ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~ ~1 ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~ ~2 ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~1 ~ ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~1 ~1 ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~1 ~2 ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~-1 ~ ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~-1 ~1 ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~-1 ~2 ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~ ~ ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~ ~1 ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~ ~2 ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~1 ~ ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~1 ~1 ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~1 ~2 ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~-1 ~ ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~-1 ~1 ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~-1 ~2 ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~ ~ ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~ ~1 ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~ ~2 ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~1 ~ ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~1 ~1 ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~1 ~2 ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~-1 ~1 ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~-1 ~2 ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
