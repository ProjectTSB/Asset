#> asset:artifact/0562.heartland/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/562/tick/

# 装備をすべて身に着けているなら
# 周囲5mのプレイヤーに自然回復エフェクトを付与
# このとき、自然回復を上書きしないようにする
    data modify storage api: Argument.ID set value 237
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect{Stack:4} as @a[distance=..5] if predicate asset:artifact/0563.heartland/regene_check run effect give @s[distance=..5] regeneration 15 1 false
