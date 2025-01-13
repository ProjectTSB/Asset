#> asset:mob/0236.ksitigarbha/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/236/death

# 祟り
    execute if entity @e[tag=!6K.Ongaeshied] at @a[tag=Killer] run function asset:mob/0236.ksitigarbha/death/2.1.curse

# 首落ちモデルに変更
    execute if entity @e[tag=!6K.Ongaeshied] if entity @a[tag=Killer] run function asset:mob/0236.ksitigarbha/death/2.2.head_drop
