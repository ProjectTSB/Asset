#> asset:mob/0075.watermelon/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/75/summon

# 元となるMobを召喚する
summon block_display ~ ~ ~ {teleport_duration:1,Tags:["MobInit"],block_state:{Name:"minecraft:melon"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]}}
