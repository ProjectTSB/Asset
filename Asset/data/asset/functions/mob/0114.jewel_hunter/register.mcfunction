#> asset:mob/0114.jewel_hunter/register
# @within asset:mob/alias/114/register

# ID (int)
    data modify storage asset:mob ID set value 114
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '[{"text":"ジ","color":"aqua"},{"text":"ュ","color":"green"},{"text":"エ","color":"yellow"},{"text":"ル","color":"light_purple"},{"text":"ハ","color":"aqua"},{"text":"ン","color":"green"},{"text":"タ","color":"yellow"},{"text":"ー","color":"light_purple"}]'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"きらびやかな宝石の魔物。","color":"white"}','{"text":"遠くからの攻撃に対し、魔法弾で反撃を行う。","color":"white"}','{"text":"近接戦に持ち込めば、反撃を封じることができるだろう。","color":"white"}']
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20246}}
    # オフハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Offhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20247}}
# 武器ドロップ率 ([float, float]) (オプション)
    data modify storage asset:mob WeaponDropChances set value [0.0f,0.0f]
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20248}}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:iron_chestplate",Count:1b}
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    data modify storage asset:mob ArmorDropChances set value [0.0f,0.0f,0.0f,0.0f]
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3900
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value 1
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value -6
# 特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす
    # data modify storage asset:mob SpecialDefense set value
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0.33
# 索敵範囲 (double) (オプション)
    data modify storage asset:mob FollowRange set value 32
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 0.825
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.5
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.5
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 3.0
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 3.0
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 3.0
