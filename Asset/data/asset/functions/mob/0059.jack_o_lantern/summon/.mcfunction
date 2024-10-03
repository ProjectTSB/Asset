#> asset:mob/0059.jack_o_lantern/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0059.jack_o_lantern/_/summon

# 元となるMobを召喚する
# 100ブロック下に召喚し、initで100ブロック上に戻す
    summon husk ~ ~-100 ~ {Tags:["MobInit","AlwaysInvisible","AntiBurn"],DeathLootTable:"asset:mob/death/0059.jack_o_lantern"}
