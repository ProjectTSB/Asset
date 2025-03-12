#> asset:mob/0365.frestchika/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/365/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 365
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
# ただし冒頭のみで、すぐに無敵でなくなる
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"C.D. フレストチカ"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"高性能マナ駆動の身体を持つサイボーグ。","color":"white"}','{"text":"攻撃性能、防御性能、運動性能、どれをとっても優れているが、","color":"white"}','{"text":"身体を無茶に使いがちで、しばしばオーバーヒートを起こす。","color":"white"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 100000
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.9
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.2
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.7
# フィールド
# スキルのリスト
    data modify storage asset:mob Field.Skill.List set value [0,1,2,3,4]
