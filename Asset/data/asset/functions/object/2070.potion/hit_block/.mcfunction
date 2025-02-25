#> asset:object/2070.potion/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2070/hit_block

# 毒ポーション以外ならkillメソッド呼び出し
    execute unless data storage asset:context this{Element:"Poison"} run function asset:object/call.m {method:kill}

# 毒ポーションのときの処理
    execute if data storage asset:context this{Element:"Poison"} run function asset:object/2070.potion/tick/poison/break
