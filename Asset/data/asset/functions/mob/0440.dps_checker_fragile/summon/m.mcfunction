#> asset:mob/0440.dps_checker_fragile/summon/m
#
#
#
# @within function asset:mob/0440.dps_checker_fragile/summon/

# 元となるEntityを召喚する
    $summon skeleton ~ ~ ~ {DeathTime:19s,Rotation:$(Rotation),Silent:1b,Tags:["MobInit","AlwaysInvisible","AntiFallDamage"],DeathLootTable:"empty"}
