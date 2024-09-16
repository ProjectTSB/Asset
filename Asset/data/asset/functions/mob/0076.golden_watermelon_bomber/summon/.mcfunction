#> asset:mob/0076.golden_watermelon_bomber/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0076.golden_watermelon_bomber/_/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Silent:1b,Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0076.golden_watermelon_bomber"}
