#> asset:mob/0412.tiamat/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/412/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 412
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 干渉可能
    data modify storage asset:mob IsForwardTarget set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"『闇竜』","color":"#CB8FFF"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"冥暗司る絶零の主、真名はティアマット。"}','{"text":"闇竜の名を以て、王に仇名す愚者共に"}','{"text":"凍てつく闇の恐怖を与えん。"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 100
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0.8f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.7f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0.5f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f
# フィールド

# ダメージ
    # 直接攻撃
        data modify storage asset:mob Field.Damage.Attack set value 50.0f
    # ダークブレス：ドーナツ範囲に広がるやつ
        data modify storage asset:mob Field.Damage.DarkBreath set value 52.0f
    # ヘルウィング：直線範囲
        data modify storage asset:mob Field.Damage.HellWing set value 52.0f
    # ダイブ：突進
        data modify storage asset:mob Field.Damage.Dive set value 55.0f
    # ダイブ追撃
        data modify storage asset:mob Field.Damage.DiveIcicle set value 52.0f
    # アダマントスパイク：テルツェットアライニングで使用
        data modify storage asset:mob Field.Damage.Adamant set value 60.0f
    # アイシクルフィールド・オーラ：テルツェットプルガトリオで使用
        data modify storage asset:mob Field.Damage.Field set value 55.0f
