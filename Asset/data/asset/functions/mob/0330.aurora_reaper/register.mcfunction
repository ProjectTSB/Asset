#> asset:mob/0330.aurora_reaper/register
# @within asset:mob/alias/330/register

# ID (int)
    data modify storage asset:mob ID set value 330
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '[{"text":"オ","color":"#00FFE2"},{"text":"ー","color":"#00f0e5"},{"text":"ロ","color":"#00e1e9"},{"text":"ラ","color":"#00d3ec"},{"text":"リ","color":"#00c4f0"},{"text":"ー","color":"#00b6f4"},{"text":"パ","color":"#00a7f7"},{"text":"ー","color":"#008bff"}]'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"オーロラから現れし兵士。","color":"white"}','{"text":"別名、オーロラの死神とも呼ばれ、あなたを殺すまで狙い続ける。","color":"white"}']
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:1227}}
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019}}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:52957}}}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:44278}}}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:35839}}}
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3900
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value 1
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value -6
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.30
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32
# ノックバック耐性 (double) (オプション)
    # data modify storage asset:mob KnockBackResist set value
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.4
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.9
    # 火倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Fire set value
    # 水倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Water set value
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.6
# フィールド
    data modify storage asset:mob Field.MotionCT set value 20
    # data modify storage asset:mob Field.AirJumpCount set value 5
