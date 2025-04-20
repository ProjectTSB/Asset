#> asset:mob/0411.behemoth/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/411/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 411
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 干渉可能
    data modify storage asset:mob IsForwardTarget set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"『焔竜』","color":"#8AB9FF"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"劫火操りし煉獄の主、真名はベヘモット。"}','{"text":"王に仇名す愚者共に蒼き炎の鉄槌を下さん。"}','{"text":"来たる破滅を阻止するため、闇竜との同時撃破を狙え。"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 40000
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.8f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.7f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0.9f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.1f
# フィールド

# ダメージ
    # 直接攻撃：2ヒット
        data modify storage asset:mob Field.Damage.Attack set value 26.0f
        data modify storage asset:mob Field.Damage.AttackHard set value 30.0f
    # フレアブレス：直線範囲、3連続
        data modify storage asset:mob Field.Damage.FlareBreath set value 45.0f
    # フラッテン：円範囲
        data modify storage asset:mob Field.Damage.Flatten set value 55.0f
    # ダイブ：突進
        data modify storage asset:mob Field.Damage.Dive set value 55.0f
    # ダイブ追撃
        data modify storage asset:mob Field.Damage.DiveFlare set value 48.0f
    # ヘルファイア：スリップダメージ
        data modify storage asset:mob Field.Damage.Hellfire set value 36.0f
    # ロックオンフレアブレス：テルツェットプルガトリオで使用
        data modify storage asset:mob Field.Damage.LockonFlare set value 60.0f
