#> asset:artifact/0364.red_knights_sword/trigger/alt_attack/
#
# サブ攻撃
#
# @within function asset:artifact/0364.red_knights_sword/trigger/3.main

# 調整担当へのメモ:
# ここではクールタイムの時間を調整できます。今は15秒です。

# 攻撃や演出など。ヘルスダメージ以外の処理。
    function asset:artifact/0364.red_knights_sword/trigger/alt_attack/attack

# 自身のヘルス割合をチェックし、それでヘルスダメージを分岐させる
    function api:entity/player/get_health_per
    execute store result score @s Temporary run data get storage api: Return.HealthPer 100

# ヘルスが最大ヘルスの41%以上あれば、普通に最大ヘルス40%のダメージを受ける
    execute if score @s Temporary matches 41.. run function asset:artifact/0364.red_knights_sword/trigger/alt_attack/half_health_damage

# ヘルスが最大ヘルスの40%以下である場合は、体力が11になってしまう！致命傷！
    execute if score @s Temporary matches ..40 run function asset:artifact/0364.red_knights_sword/trigger/alt_attack/lethal_damage

# Alt攻撃のクールタイムを兼ねたデバフを付与
# Argument.Durationを変更するとデバフの時間が変わる。1秒＝20です。
    data modify storage api: Argument.ID set value 321
    data modify storage api: Argument.Stack set value 1
    data modify storage api: Argument.Duration set value 300
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 全部終わったのでリセット
    scoreboard players reset @s Temporary
