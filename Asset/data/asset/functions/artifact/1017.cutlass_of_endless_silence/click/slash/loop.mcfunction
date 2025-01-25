#> asset:artifact/1017.cutlass_of_endless_silence/click/slash/loop
#
#
#
# @within function
#   asset:artifact/1017.cutlass_of_endless_silence/click/
#   asset:artifact/1017.cutlass_of_endless_silence/click/slash/loop
#   asset:artifact/1017.cutlass_of_endless_silence/rejoin_process

# ファンクションを実行する
    execute as @a[tag=S9.Activation] at @s run function asset:artifact/1017.cutlass_of_endless_silence/click/slash/

# ループする
    execute if entity @a[tag=S9.Activation] run schedule function asset:artifact/1017.cutlass_of_endless_silence/click/slash/loop 1t replace
