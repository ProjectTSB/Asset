#> asset:mob/0153.domination/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0153.domination/attack/1.trigger

# 演出
    execute at @a[tag=Victim] run playsound block.anvil.land hostile @a ~ ~ ~ 1 1.3

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 33f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim] run function lib:damage/
# リセット
    function lib:damage/reset

# 難易度値を取得
    function api:global_vars/get_difficulty

# プレイヤーを支配デバフを付与
# 効果時間 (20 × 難易度値)tick
    data modify storage api: Argument.ID set value 603
    execute store result storage api: Argument.Duration int 20 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim] run function api:entity/mob/effect/give