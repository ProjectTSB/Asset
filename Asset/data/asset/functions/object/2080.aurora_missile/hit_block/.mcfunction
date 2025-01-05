#> asset:object/2080.aurora_missile/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2080/hit_block

# Enhanced:trueではないかつ、スコアが一定値以下の場合はkillメソッドとは別で消滅する
    execute if entity @s[tag=!2080.Enhanced,scores={General.Object.Tick=..19}] run kill @s

# Enhanced:trueではなかつ、スコアが一定値以上の場合はkillメソッド呼び出し
    execute if entity @s[tag=!2080.Enhanced,scores={General.Object.Tick=20..}] run function asset:object/call.m {method:kill}

# Enhanced:trueなら問答無用でkillメソッド呼び出し
    execute if data storage asset:context this{Enhanced:true} run function asset:object/call.m {method:kill}
