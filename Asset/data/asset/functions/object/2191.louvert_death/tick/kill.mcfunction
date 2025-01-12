#> asset:object/2191.louvert_death/tick/kill
#
# キル
#
# @within function asset:object/2191.louvert_death/tick/

# AnimatedJavaモデルの削除
    function animated_java:louvert/remove/all

# パーティクル処理
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1

# ボスドロップ（暫定）
    loot spawn ~ ~ ~ loot common:sacred_shard/lv-4
    loot spawn ~ ~ ~ loot common:sacred_shard/lv-4
    loot spawn ~ ~ ~ loot common:sacred_shard/lv-4
