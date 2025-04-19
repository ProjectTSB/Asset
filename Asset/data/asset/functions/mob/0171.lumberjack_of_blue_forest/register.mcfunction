#> asset:mob/0171.lumberjack_of_blue_forest/register
# @within asset:mob/alias/171/register

# ID (int)
    data modify storage asset:mob ID set value 171
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"蒼い森の木こり","color":"dark_aqua"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"魂を刈り取る木こり。","color":"white"}','{"text":"攻撃をされると最大体力が減少する。","color":"white"}']
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"diamond_axe",Count:1b}
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"warped_stem",Count:1b}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2658184}}}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2658184}}}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2658184}}}
# 防具ドロップ率 ([float, float]) (オプション)
    data modify storage asset:mob ArmorDropChances set value [0.0f,0.0f,0.f,0.0f]
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 1250
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value -6
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.2
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.875
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.2
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.9
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.8
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.2
