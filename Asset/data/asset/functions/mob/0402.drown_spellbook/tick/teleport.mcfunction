#> asset:mob/0402.drown_spellbook/tick/teleport
#
# テレポート
#
# @within function asset:mob/0402.drown_spellbook/tick/

# 演出
    playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1

# マーカーを持ってくる
    tp 0-0-0-0-0 ^ ^ ^ ~ ~

# ランダムテレポート
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,2d],[5d,5d]]
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/

# マーカーの位置にブロックがなかったらテレポートする
    execute at 0-0-0-0-0 if block ~ ~ ~ #lib:no_collision/ run tp @s ~ ~ ~

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
