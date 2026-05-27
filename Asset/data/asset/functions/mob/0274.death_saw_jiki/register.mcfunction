#> asset:mob/0274.death_saw_jiki/register
# @within asset:mob/alias/274/register

# ID (int)
    data modify storage asset:mob ID set value 274
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"デスソージキ"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"デスソージキは殺戮している部屋の地図を作成しない。","color":"white"}','{"text":"その代わりに「何かにぶつかったら角度を変える」「穴は避ける」「貴様を殺す」","color":"white"}','{"text":"など、いくつかの単純なヒューリスティックスで動作している。","color":"white"}']
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20156}}
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3900
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    # data modify storage asset:mob Defense set value
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    # data modify storage asset:mob Speed set value
# 索敵範囲 (double) (オプション)
    # data modify storage asset:mob FollowRange set value
# ノックバック耐性 (double) (オプション)
    # data modify storage asset:mob KnockBackResist set value
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.7
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.3
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.2
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.8
