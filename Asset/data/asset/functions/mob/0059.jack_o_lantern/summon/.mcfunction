#> asset:mob/0059.jack_o_lantern/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0059.jack_o_lantern/_/summon

# 元となるMobを召喚する
# 一部スキルで使用するのでカボチャのscale0のitem_displayを被せておく
    summon husk ~ ~ ~ {Silent:1b,Tags:["MobInit","AlwaysInvisible","AntiBurn","AntiVoid"],DeathLootTable:"asset:mob/death/0059.jack_o_lantern"}
