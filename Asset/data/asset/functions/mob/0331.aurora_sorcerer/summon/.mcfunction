#> asset:mob/0331.aurora_sorcerer/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0331.aurora_sorcerer/_/summon

# 元となるMobを召喚する
    summon skeleton ~ ~ ~ {Silent:1b,Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0331.aurora_sorcerer"}
