#> asset:artifact/1108.white_lily_of_priestess/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1108.white_lily_of_priestess/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1108
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 周囲にデバフを持っているプレイヤーがいるか探す
    execute if entity @s[tag=CanUsed] as @a[distance=..20] run function asset:artifact/1108.white_lily_of_priestess/trigger/2.check_condition/check_debuff
# 周囲のプレイヤーのデバフ数の合計が1以上でないならCanUsedを削除
    execute unless score $DebuffTotal Temporary matches 1.. run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1108.white_lily_of_priestess/trigger/3.main

# リセット
    scoreboard players reset $DebuffTotal Temporary
    scoreboard players reset @a[distance=..20] Temporary
