#> asset:artifact/1606.dimension_knife/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1606.dimension_knife/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# AttackCountの管理
    function asset:artifact/1606.dimension_knife/trigger/attack_count

# Effect388があるかをチェック
    data modify storage api: Argument.ID set value 388
    function api:entity/mob/effect/get/from_id

# 演出
    function asset:artifact/1606.dimension_knife/trigger/fx/

# ダメージ
    function asset:artifact/1606.dimension_knife/trigger/damage

# バフがあるかつ、AttackCountが3ならバフを消す
    execute if data storage api: Return.Effect if score @s 18M.AttackCount matches 3.. run function asset:artifact/1606.dimension_knife/trigger/remove_buff

# 3以上ならAttackCountを初期化
    execute if score @s 18M.AttackCount matches 3.. run scoreboard players reset @s 18M.AttackCount
