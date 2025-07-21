#> asset:mob/0205.skull_soldier/register
# @within asset:mob/alias/205/register

# ID (int)
    data modify storage asset:mob ID set value 205
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value 1b
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"スカルソルジャー"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"弓と斧を扱うスケルトン。","color":"white"}','{"text":"遠距離の的には弓を使い、近接戦闘では斧を取り出す。","color":"white"}','{"text":"だがあまり賢くはなく、自ら交戦距離を変えようとはしない。","color":"white"}']
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stone_axe",Count:1b}
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 武器ドロップ率 ([float, float]) (オプション)
    data modify storage asset:mob WeaponDropChances set value [0.0f,0.0f]
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1076876798,-181975559,-1455522315,1508980085],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI0MGYyYjFhNjgxMzY2NDU2YmY5ODkyZDFjMGY0NzMzOTliOTZiYTkwYmNhYjY4ZTc3YjY4NDg0NjllYjU3In19fQ=="}]}}}}
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 130
# 攻撃力 (double) (オプション)
    # data modify storage asset:mob AttackDamage set value -4.0d
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    # data modify storage asset:mob Defense set value 0.0d
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
        data modify storage asset:mob Resist.Physical set value 1.2
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0
