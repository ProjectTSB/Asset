#> asset:artifact/0261.holy_symbol_lv.1/click/symbol/
#
#
#
# @within function asset:artifact/0261.holy_symbol_lv.1/click/recursive

#> temp
# @private
    #declare score_holder $Temp

# 実行時間を移す
    scoreboard players operation $Temp Temporary = @s 79.HolySymbol
# 1秒毎にMP回復と魔法陣の表示
    scoreboard players operation $Temp Temporary %= $20 Const
    execute if score $Temp Temporary matches 0 run function asset:artifact/0261.holy_symbol_lv.1/click/symbol/vfx
    execute if score $Temp Temporary matches 0 as @a[distance=..4.5,limit=10] run function asset:artifact/0261.holy_symbol_lv.1/click/symbol/add_mp
# プレイヤーにエフェクトの付与
    execute as @a[distance=..4.5] run function asset:artifact/0261.holy_symbol_lv.1/click/symbol/check_effect
# 実行時間のインクリメント
    scoreboard players add @s 79.HolySymbol 1
# 10秒を超えてたらリセット
    execute if score @s 79.HolySymbol matches 200.. run kill @s
# 超えていなければschedule再帰
    execute if score @s 79.HolySymbol matches ..200 run schedule function asset:artifact/0261.holy_symbol_lv.1/click/recursive 1t
# リセット
    scoreboard players reset $Temp
