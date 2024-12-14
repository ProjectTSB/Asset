#> asset:object/1058.brave_knight/tick/event/combo/damage
#
#
#
# @within function
#   asset:object/1058.brave_knight/tick/event/combo/0
#   asset:object/1058.brave_knight/tick/event/combo/1

    # 引数の設定
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。追加ダメージ。
            scoreboard players operation $RandomDamage Temporary %= $51 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 100
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @p[tag=1058.OwnerPlayer] run function api:damage/modifier

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.3
    data modify storage lib: Argument.KnockbackResist set value true
    execute facing entity @e[type=armor_stand,scores={MobID=307},sort=nearest,limit=1] feet rotated ~ ~25 run function lib:motion/

# ダメージ実行
    function api:damage/

# リセット
    function api:damage/reset
    scoreboard players reset $RandomDamage Temporary
