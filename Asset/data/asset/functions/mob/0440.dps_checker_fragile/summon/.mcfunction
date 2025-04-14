#> asset:mob/0440.dps_checker_fragile/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/440/summon

# 元となるEntityを召喚する
    summon skeleton ~ ~ ~ {DeathTime:19s,Silent:1b,Tags:["MobInit","AlwaysInvisible","AntiFallDamage"],DeathLootTable:"empty"}
