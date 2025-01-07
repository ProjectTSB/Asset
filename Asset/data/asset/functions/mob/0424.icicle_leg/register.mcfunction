#> asset:mob/0424.icicle_leg/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/424/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 424
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"つらら脚","color":"white"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"強靭で、そしてとても冷たい脚を持つ。","color":"white"}','{"text":"その脚から放たれる踏みつけは、吹雪を巻き起こす。","color":"white"}']
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20470}}
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3500
# 攻撃力 (double) (オプション)
    data modify storage asset:mob AttackDamage set value 0
# 移動速度 (double) (オプション)
    data modify storage asset:mob Speed set value 0
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.8f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.2f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0.8f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f
