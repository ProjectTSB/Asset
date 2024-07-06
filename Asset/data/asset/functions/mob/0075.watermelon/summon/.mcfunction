#> asset:mob/0075.watermelon/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0075.watermelon/_/summon

# 元となるMobを召喚する
    summon block_display ~ ~ ~ {teleport_duration:1,Tags:["MobInit"],block_state:{Name:"minecraft:melon"}}
