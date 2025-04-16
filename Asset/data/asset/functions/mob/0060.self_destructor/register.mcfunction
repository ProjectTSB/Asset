#> asset:mob/0060.self_destructor/register
# @within asset:mob/alias/60/register

# ID (int)
    data modify storage asset:mob ID set value 60
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"自爆者","color":"dark_red"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"クリーパー顔負けの爆発を起こす。","color":"white"}','{"text":"地形破壊はしないのでそこだけは良心的。","color":"white"}']
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:tnt",Count:1b}
    # オフハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Offhand set value {id:"minecraft:tnt",Count:1b}
# 武器ドロップ率 ([float, float]) (オプション)
    data modify storage asset:mob WeaponDropChances set value [0.0f,0.0f]
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:tnt",Count:1b}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14221312}}}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14221312}}}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14221312}}}
# 防具ドロップ率 ([float, float]) (オプション)
    data modify storage asset:mob ArmorDropChances set value [0.0f,0.0f,0.f,0.0f]
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 360
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value 1.0
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    # data modify storage asset:mob Defense set value 0
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.28
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 20
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.8
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.7
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.4
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0.5
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0

# フィールド
    data modify storage asset:mob Field.Countdown set value 3
