#> asset:mob/0338.corundum_twins/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0338.corundum_twins/summon/1.trigger

# 元となるMobを召喚する
    summon slime ~ ~ ~ {Tags:["MobInit","9E.Root"],DeathLootTable:"asset:mob/death/0338.corundum_twins",PersistenceRequired:1b,Silent:1b,NoAI:1b,NoGravity:1b,Invulnerable:1b}
# ID (int)
    data modify storage asset:mob ID set value 338
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '[{"text":"ルビエル","color":"#ffbfd4"},{"text":"＆","color":"white"},{"text":"サフィエル","color":"#a1faf5"}]'
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
    data modify storage asset:mob Health set value 50000
    # TODO:性質上マルチの場合体力が減りやすいので、マルチ時は体力を多めに設定
        # data modify storage asset:mob Health set value 50000
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
        # data modify storage asset:mob Resist.Physical set value 
    # 魔法倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Magic set value 
    # 火倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Fire set value 
    # 水倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Water set value 
    # 雷倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Thunder set value 

# 中心点召喚
    # summon marker ~ ~ ~ {Tags:["8T.Marker.SpawnPoint"]}

# Mob独自のInit処理実行
    execute as @e[type=slime,tag=MobInit,distance=..0.01] run function asset:mob/0338.corundum_twins/summon/app/1.init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=slime,tag=MobInit,distance=..0.01] run function asset:mob/common/summon

# 双子の召喚処理実行
# 自身のInit前に実行するとエラーが起こるのでこの位置で行う
    execute as @e[type=slime,tag=9E.Init,distance=..0.01] run function asset:mob/0338.corundum_twins/summon/app/2.summon_twins
