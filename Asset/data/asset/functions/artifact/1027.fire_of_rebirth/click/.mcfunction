#> asset:artifact/1027.fire_of_rebirth/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1027/click/


# 演出
    playsound minecraft:entity.puffer_fish.death player @a ~ ~ ~ 1 0

# 魔法陣設置
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYALAGYUCGFAbAEbUC0A7AMwCMRzZRAHACZm-AJzsAxszpFBRaq278ycTmFwZqAWwTJAW74ACNbhjUATtoDOScBID2eDBCQBWXBTN2tNsADdqKHi64AAeSNK4UEgADAC+sbgQdj7+gcFgYYh0kTHxuHZUlnDOiNG4DHAAXmhwZjG4aJYAQlU1ZgCiAI54AShQAMqmEnAkiDQoRXng0PCk6Fjq+ISjYJJEZOzULgwiguzCZJxw7MzU1Jz8zHASrHCirBL8dIJ3i5o6pIaczPYwUSbmKw+eyOErsdyebyIcCpII+TLSAB0bjAUUQzHYiP4eUgyWhfgCcPxmTKqNyCTABQoRRKpIq1Vq4U4iOyYEaLQZHW6vQGQxGSHGkwS01gulQmBwS2IpFYdBcgjoZ2+LjgdDgvHYNGYDAYFFEzCIrFYur49AoDDIb20Yq+Pzsfztf0WpgsWms+JBTiQ4LAHi8KUJ6UydGROXRmOxFKSAbS8PqZNKOKpNPj9LaSGZrPZrVqXR6KD6g2ow1Ggrg8QAukA_3
    # 線 1
    scoreboard players set $SJ.MagicID Temporary 1
    execute anchored eyes positioned ^-6 ^ ^-2 positioned ~ ~0 ~ run function asset:artifact/1027.fire_of_rebirth/click/summon
    execute anchored eyes positioned ^-3 ^ ^-2 positioned ~ ~0 ~ run function asset:artifact/1027.fire_of_rebirth/click/summon
    execute anchored eyes positioned ^3 ^ ^-2 positioned ~ ~0 ~ run function asset:artifact/1027.fire_of_rebirth/click/summon
    execute anchored eyes positioned ^6 ^ ^-2 positioned ~ ~0 ~ run function asset:artifact/1027.fire_of_rebirth/click/summon
    # 線 2
    scoreboard players set $SJ.MagicID Temporary 2
    execute anchored eyes positioned ^-6.5 ^ ^-2 positioned ~ ~3.8 ~ run function asset:artifact/1027.fire_of_rebirth/click/summon
    execute anchored eyes positioned ^-3.65376 ^ ^-2 positioned ~ ~1.20936 ~ run function asset:artifact/1027.fire_of_rebirth/click/summon
    # 線 3
    scoreboard players set $SJ.MagicID Temporary 3
    execute anchored eyes positioned ^6.5 ^ ^-2 positioned ~ ~3.8 ~ run function asset:artifact/1027.fire_of_rebirth/click/summon
    execute anchored eyes positioned ^3.65376 ^ ^-2 positioned ~ ~1.20936 ~ run function asset:artifact/1027.fire_of_rebirth/click/summon

# リセット
    scoreboard players reset $SJ.MagicID Temporary
