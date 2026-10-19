#> asset:mob/0370.wave_spellbook/rotate/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/370/rotate

# プレイヤーが近くにいなければsuper.rotate
    execute unless entity @p[gamemode=!spectator,distance=..6] run function asset:mob/super.method
