#> asset:artifact/0382.haru_urara/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0382.haru_urara/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..10] at @s run particle dust 0.965 0.745 0.973 1 ~ ~0.3 ~ 0.4 8 0.4 0 400 force @a[distance=..30]
    playsound minecraft:entity.ender_dragon.flap player @a[distance=..15] ~ ~ ~ 1 1

# ダメージ
    # 与えるダメージ = 42
        data modify storage api: Argument.Damage set value 45f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 無属性
        data modify storage api: Argument.ElementType set value "None"
    # 耐性エフェクトを無視するか否か
        data modify storage api: Argument.FixedDamage set value false
# 補正functionを実行
    function api:damage/modifier
# 攻撃した対象に実行
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..10] run function api:damage/
# リセット
    function api:damage/reset

# 吹っ飛び効果
# 天使には無効
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 31
    data modify storage api: Argument.Duration set value 20
    execute as @e[type=#lib:living_without_player,tag=Victim,tag=!Immovable,distance=..10] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
