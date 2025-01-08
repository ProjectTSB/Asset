#> asset:mob/0376.convict_v2/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/376/hurt
# super.hurt呼び出し
    function asset:mob/super.hurt
    
# 演出
    playsound minecraft:entity.player.hurt hostile @a ~ ~ ~ 1 1
