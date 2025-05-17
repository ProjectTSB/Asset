#> asset:mob/1004.tultaria/tick/void/death/
#
# 眼の前がまっくらになった…
#
# @within function asset:mob/1004.tultaria/tick/void/

# 画面エフェクト
    title @s times 0 60 5
    title @s title {"text":""}
    title @s subtitle {"text":"\uE010","font":"screen_effect","color":"black"}

# テレポート
    execute at @e[type=marker,tag=RW.Marker.SpawnPoint,distance=..128,limit=1] run function asset:mob/1004.tultaria/tick/void/death/teleport

# 致死ダメージとサウンド: サウンドの聞こえ方が変わらないようにat @sを入れている
    execute at @s run function asset:mob/1004.tultaria/tick/void/death/damage
