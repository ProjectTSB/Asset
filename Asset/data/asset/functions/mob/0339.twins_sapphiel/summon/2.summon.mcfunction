#> asset:mob/0339.twins_sapphiel/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0339.twins_sapphiel/summon/1.trigger

# rootからの召喚以外は無効にする
    execute unless entity @s[type=slime,tag=9E.Root] run tellraw @a [{"text":"【0339.twins_sapphielは0338.corundum_twinsの処理でのみ召喚できます】","color":"white"}]
    execute unless entity @s[type=slime,tag=9E.Root] run return -1

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AlwaysInvisible","9F.Root"],DeathLootTable:"asset:mob/death/0339.twins_sapphiel",PersistenceRequired:1b,Silent:1b,NoAI:1b,NoGravity:1b}
# ID (int)
    data modify storage asset:mob ID set value 339
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"サフィエル","color":"#a1faf5"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value 
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value 
# 武器ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob WeaponDropChances set value 
# 防具
    # 頭 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Head set value 
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value 
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value 
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value 
# 防具ドロップ率 ([float, float]) (オプション)
    # data modify storage asset:mob ArmorDropChances set value 
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 100000
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
        data modify storage asset:mob Resist.Physical set value 0.5f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f

# animated javaモデル召喚
    execute positioned ~ ~100 ~ rotated ~ 0 run function animated_java:twins_sapphiel/summon
# Mob独自のInit処理実行
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/0339.twins_sapphiel/summon/app/1.init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01] run function asset:mob/common/summon
