#> asset:mob/0077.golden_watermelon/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/77/summon

# 元となるMobを召喚する
summon block_display ~ ~1 ~ {teleport_duration:1,Tags:["MobInit"],block_state:{Name:"minecraft:melon"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.4f,-0.4f],scale:[0.8f,0.8f,0.8f]}}
