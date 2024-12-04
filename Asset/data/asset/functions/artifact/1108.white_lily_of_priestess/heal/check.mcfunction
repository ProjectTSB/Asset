#> asset:artifact/1108.white_lily_of_priestess/heal/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1108/heal/check

# 周囲にデバフを持っているプレイヤーがいるか探す
    execute if entity @s[tag=CanUsed] as @a[distance=..20] run function asset:artifact/1108.white_lily_of_priestess/heal/check_debuff
# 周囲のプレイヤーのデバフ数の合計が1以上でないならCanUsedを削除
    execute unless score $DebuffTotal Temporary matches 1.. run tag @s remove CanUsed

# リセット
    scoreboard players reset $DebuffTotal Temporary
    scoreboard players reset @a[distance=..20] Temporary
