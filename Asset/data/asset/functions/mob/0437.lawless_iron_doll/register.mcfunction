#> asset:mob/0437.lawless_iron_doll/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/437/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 437
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
# ただし冒頭のみで、すぐに無敵でなくなる
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"無法の鉄巨人","color":"white"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"元々は名も知れぬ博物館の展示品。今は呪われた神器を守っているぞ。","color":"white"}','{"text":"いったい何が「無法」なのかはわからないが、攻撃が強烈なのは確かだ。","color":"white"}','{"text":"だが、一部の攻撃は飛び越えることでも回避できるかもしれない。","color":"white"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 175000
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.85
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.2

    # ダメージ設定
        # 物理攻撃
            # 薙ぎ払い
                data modify storage asset:mob Field.Damage.Slash1 set value 55f
            # 薙ぎ払いの発射体
                data modify storage asset:mob Field.Damage.SlashShot1 set value 40f
            # 斬り上げ
                data modify storage asset:mob Field.Damage.Slash2 set value 55f
            # 斬り上げの発射体
                data modify storage asset:mob Field.Damage.SlashShot2 set value 40f
            # 突進
                data modify storage asset:mob Field.Damage.Charge set value 50f
            # 衝撃波
                data modify storage asset:mob Field.Damage.ShockWave set value 40f
            # スーパー叩きつけ攻撃
                data modify storage asset:mob Field.Damage.SuperSlam set value 60f
            # 接触ダメージ
                data modify storage asset:mob Field.Damage.Contact set value 30f

        # 魔法攻撃
            # 残留レーザー（メイン部分）
                data modify storage asset:mob Field.Damage.ChaserShot set value 35f
            # 残留レーザー（残留判定）
                data modify storage asset:mob Field.Damage.LingeringLaser set value 5f
            # スーパーレーザー攻撃(オマケ)
                data modify storage asset:mob Field.Damage.SuperLaserSub set value 20f
            # スーパーレーザー攻撃(メイン)
                data modify storage asset:mob Field.Damage.SuperLaserMain set value 30f
