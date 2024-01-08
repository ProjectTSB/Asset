#> asset:mob/0341.louvert/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0341.louvert/summon/1.trigger

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0341.louvert",NoAI:1b,Silent:1b}
# ID (int)
    data modify storage asset:mob ID set value 341
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ルヴェルト"}'
# 体力 (double) (オプション) 
# 強耐性のため体力は低め
    data modify storage asset:mob Health set value 55000
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 0
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.5f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.7f 

# 召喚位置を記録
    summon marker ~ ~1 ~ {Tags:["9H.Marker.SummonPoint"]}

# Mob専用のInit処理を実行
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/0341.louvert/summon/3.init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon