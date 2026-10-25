#> asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_1/damage
#
# 斬撃のダメージ: レベル1
#
# @within function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/**

# 調整担当へのメモ:
# HPが67%以上あるときの性能です。この段階ではリーチも短ければ、ダメージもあんまり出ません。
# ある程度HPが下がってないとあんまり使い物にならない感じです。
# 想定ダメージはまぁ…フィニッシュのショットを当てないときのブレイブソードくらい。レベル4弱神器くらいです。

# タグ付与
    execute positioned ^ ^ ^1 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..3] add A4.Hit
    execute as @e[type=#lib:living_without_player,tag=A4.Hit,tag=!Uninterferable,distance=..3] positioned ^ ^ ^-100 run tag @s[type=#lib:living_without_player,tag=A4.Hit,tag=!Uninterferable,distance=..100] remove A4.Hit

# 引数の設定
    # ダメージ値設定
        execute store result storage api: Argument.Damage float 1 run random value 190..240
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @p[tag=this] run function api:damage/modifier
# ダメージ実行
    execute as @e[type=#lib:living_without_player,tag=A4.Hit,tag=!Uninterferable,distance=..3,sort=random] run function api:damage/

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.7
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @e[type=#lib:living_without_player,tag=A4.Hit,tag=!Uninterferable,distance=..3] at @s facing entity @p[tag=this] feet rotated ~ ~5 run function lib:motion/

# リセット
    tag @e[type=#lib:living_without_player,tag=A4.Hit,tag=!Uninterferable,distance=..3] remove A4.Hit
    function api:damage/reset
