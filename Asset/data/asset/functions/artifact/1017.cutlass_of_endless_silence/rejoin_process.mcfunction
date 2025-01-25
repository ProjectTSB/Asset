#> asset:artifact/1017.cutlass_of_endless_silence/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# ループさせる
    execute if entity @a[tag=S9.Activation] run schedule function asset:artifact/1017.cutlass_of_endless_silence/click/slash/loop 1t replace
