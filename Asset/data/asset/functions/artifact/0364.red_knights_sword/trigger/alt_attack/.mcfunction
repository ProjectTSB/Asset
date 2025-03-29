#> asset:artifact/0364.red_knights_sword/trigger/alt_attack/
#
# サブ攻撃
#
# @within function asset:artifact/0364.red_knights_sword/trigger/3.main

# 自身のヘルス割合をチェックし、それで攻撃を分岐させる
    function api:entity/player/get_health_per
    execute store result score @s Temporary run data get storage api: Return.HealthPer 100

# ヘルスが最大ヘルスの50%以上あれば、普通に最大ヘルス50%のダメージを受ける
    execute if score @s Temporary matches 51.. run function asset:artifact/0364.red_knights_sword/trigger/alt_attack/half_health_damage

# ヘルスが最大ヘルスの49%以下である場合は、体力が1になってしまうぞ！
    execute if score @s Temporary matches ..50 run function asset:artifact/0364.red_knights_sword/trigger/alt_attack/lethal_damage

# Alt攻撃のクールタイムを兼ねたデバフを付与
    data modify storage api: Argument.ID set value 321
    data modify storage api: Argument.Stack set value 1
    data modify storage api: Argument.Duration set value 3
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 全部終わったのでリセット
    scoreboard players reset @s Temporary
