#> asset:object/1163.frost_flake_bloom/tick/launch
#
#
#
# @within function asset:object/1163.frost_flake_bloom/tick/

    playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 2 1.8
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 2 1.5


# 高さ4.0から、半径4.0の着弾点へ向かう8方向の軌道
    particle snowflake ~ ~4.0 ~ 0 -1 -1 0.6 0 force @a
    particle snowflake ~ ~4.0 ~ 0.71 -1 -0.71 0.6 0 force @a
    particle snowflake ~ ~4.0 ~ 1 -1 0 0.6 0 force @a
    particle snowflake ~ ~4.0 ~ 0.71 -1 0.71 0.6 0 force @a
    particle snowflake ~ ~4.0 ~ 0 -1 1 0.6 0 force @a
    particle snowflake ~ ~4.0 ~ -0.71 -1 0.71 0.6 0 force @a
    particle snowflake ~ ~4.0 ~ -1 -1 0 0.6 0 force @a
    particle snowflake ~ ~4.0 ~ -0.71 -1 -0.71 0.6 0 force @a
