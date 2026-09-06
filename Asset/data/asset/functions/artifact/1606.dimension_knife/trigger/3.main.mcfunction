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

# 演出用Object
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:13066983,Frames:[20335,20336,20337],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute anchored eyes positioned ^ ^ ^1.5 positioned ~ ~-0.5 ~ run function api:object/summon

# ダメージ
    function asset:artifact/1606.dimension_knife/trigger/damage

# バフがあるかつ、AttackCountが3ならバフを消す
    execute if data storage api: Return.Effect if score @s 18M.AttackCount matches 3.. run function asset:artifact/1606.dimension_knife/trigger/remove_buff

# 3以上なら初期化
    execute if score @s 18M.AttackCount matches 3.. run scoreboard players reset @s 18M.AttackCount

# リセット
