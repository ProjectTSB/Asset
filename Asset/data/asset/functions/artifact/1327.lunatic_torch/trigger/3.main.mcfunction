#> asset:artifact/1327.lunatic_torch/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1327.lunatic_torch/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# メモがてら仕様を書く
# 1. 自身を除く一定範囲内のプレイヤーの検索用スコアを初期化 魔法攻撃補正が100%未満なら対象としない
# 2. その中のプレイヤーからスコアが最も高いプレイヤーを1名探す、をN回繰り返す
# 3. 自身と対象にバフ付与
# 4. リセット

# 演出
    playsound entity.blaze.shoot player @a ~ ~ ~ 0.7 1
    playsound block.enchantment_table.use player @a ~ ~ ~ 0.8 1.3
    playsound block.enchantment_table.use player @a ~ ~ ~ 0.8 1.4
    playsound block.enchantment_table.use player @a ~ ~ ~ 0.8 1.5
    execute rotated ~ 0 anchored eyes positioned ^0.5 ^0.5 ^ run function asset:artifact/1327.lunatic_torch/trigger/vfx

# 自身にtagを付与
    tag @s add 10V.BuffTarget

# 自身を除く他プレイヤーのデータの初期化
    execute as @a[tag=!this,distance=..20] run function asset:artifact/1327.lunatic_torch/trigger/target_init

# まだ対象になりうるプレイヤーがいれば、バフ対象を2人探す
    execute if entity @a[tag=10V.SearchTarget,tag=!10V.BuffTarget,distance=..20] run function asset:artifact/1327.lunatic_torch/trigger/find_target
    execute if entity @a[tag=10V.SearchTarget,tag=!10V.BuffTarget,distance=..20] run function asset:artifact/1327.lunatic_torch/trigger/find_target

# バフを付与
    # 調整班用
        # 効果時間
            data modify storage api: Argument.Duration set value 200
        # 補正
            data modify storage api: Argument.FieldOverride.Modifier.MagicAttack set value 0.1
            data modify storage api: Argument.FieldOverride.Modifier.MPHeal set value -0.25
        # MPが何%以上必要か？
            data modify storage api: Argument.FieldOverride.NeedMPPer set value 0.1

    # 付与
        data modify storage api: Argument.ID set value 346
        execute as @a[tag=10V.BuffTarget,distance=..20] run function api:entity/mob/effect/give
        function api:entity/mob/effect/reset

# リセット
    scoreboard players reset @a[distance=..20] Temporary
    tag @a[tag=10V.BuffTarget] remove 10V.BuffTarget
    tag @a[tag=10V.SearchTarget] remove 10V.SearchTarget
