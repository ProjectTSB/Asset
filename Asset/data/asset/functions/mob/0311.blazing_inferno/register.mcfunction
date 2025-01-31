#> asset:mob/0311.blazing_inferno/register
# @within asset:mob/alias/311/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 311
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
# ただし冒頭のみで、すぐに無敵でなくなる
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ブレイジング・インフェルノ","color":"#FF6F00","bold":false,"italic":false}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"インフェルノは体だけでなく気持ちも大きい。","color":"white"}','{"text":"強力なパンチで、頑強なブロックでさえ豆腐のように砕いてしまうぞ！","color":"white"}','{"text":"炎を素手で丸めてファイアボールにすることだってできるんだ。","color":"white"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 55000d
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1.0d
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.7f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.4f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f
# フィールド
# スキルのリスト。
    data modify storage asset:mob Field.Skill.List set value [0,1,2,3,4]
