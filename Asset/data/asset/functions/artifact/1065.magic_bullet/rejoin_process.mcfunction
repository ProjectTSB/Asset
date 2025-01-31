#> asset:artifact/1065.magic_bullet/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# ループ再開
    execute if entity @e[type=!#lib:living,tag=TL.LoopTarget,limit=1] run schedule function asset:artifact/1065.magic_bullet/click/loop/ 1t replace
