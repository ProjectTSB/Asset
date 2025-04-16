#> asset:artifact/0364.red_knights_sword/trigger/alt_attack/attack
#
#
#
# @within function asset:artifact/0364.red_knights_sword/trigger/alt_attack/

# 調整担当へのメモ:
# 攻撃はエフェクトで担当してしまっているので、ここには数値設定がありません。
# "asset:effect/0322.zenith_slash_emitter/tick/"でダメージ設定してます。

# サウンド
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 2
    playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 0.7 1.5
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.6

# パーティクル
    particle flame ~ ~1 ~ 0.5 0.5 0.5 0.05 10
    particle block redstone_wire ~ ~1 ~ 0.2 0.5 0.2 0.05 50

# 剣発射バフを付与
# Argument.Durationを変更するとバフの時間…つまり発射される数が変わります。今は10本。
    data modify storage api: Argument.ID set value 322
    data modify storage api: Argument.Stack set value 1
    data modify storage api: Argument.Duration set value 10
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# ズーム兼ねて鈍足も付与
    data modify storage api: Argument.ID set value 17
    data modify storage api: Argument.Stack set value 10
    data modify storage api: Argument.Duration set value 20
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
