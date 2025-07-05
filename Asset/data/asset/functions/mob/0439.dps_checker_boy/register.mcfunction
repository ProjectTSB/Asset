#> asset:mob/0439.dps_checker_boy/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/439/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 439
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '[{"text":"訓練用の人形","color":"white"}]'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"攻撃されてから15秒間のDPSを計測する。","color":"white"}','{"text":"近づきすぎると、小突いてくるぞ。","color":"white"}']
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019}}
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 10000000
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0
# 索敵範囲 (double) (オプション)
    # data modify storage asset:mob FollowRange set value
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0
# フィールド
    data modify storage asset:mob Field.Color set value "aqua"
    data modify storage asset:mob Field.Sum set value 0
    data modify storage asset:mob Field.Tick set value 0
    data modify storage asset:mob Field.Cooldown set value 0
    data modify storage asset:mob Field.DPSCheckDuration set value 300
    data modify storage asset:mob Field.IsAttacked set value false
