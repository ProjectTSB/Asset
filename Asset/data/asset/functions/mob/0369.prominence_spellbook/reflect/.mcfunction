#> asset:mob/0369.prominence_spellbook/reflect/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/369/reflect

# 後退モードでなければsuper.reflect
    execute unless data storage asset:context this.MoveBackTick{_:0} run function asset:mob/super.method

# もし後退モードで足元がブロックなら真下を向く
    execute if data storage asset:context this.MoveBackTick{_:0} at @s unless block ~ ~1 ~ #lib:no_collision/ run tp @s ~ ~ ~ ~ 90
