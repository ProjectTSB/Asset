#> asset:mob/0220.vena_cana/attack/
#
# Mobの攻撃時の処理 実行者はプレイヤー
#
# @within function asset:mob/alias/220/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    playsound minecraft:block.conduit.ambient hostile @a ~ ~ ~ 0.7 0.8 0
    particle dust 0.149 0.682 0.741 1 ~ ~1.2 ~ 0.6 0.3 0.6 0 30 normal @a

# 第一に攻撃対象の全effectをclear
    effect clear @s

# ダメージ
    data modify storage lib: Argument.Damage set value 37f
    data modify storage lib: Argument.AttackType set value "Physical"
# 補正functionを実行
    execute as @e[type=zombie,tag=this,distance=..6,sort=nearest,limit=1] run function lib:damage/modifier
# 対象
    function lib:damage/
# リセット
    function lib:damage/reset

# 難易度の値を取得
    function api:global_vars/get_difficulty

# (難易度の値)Lvの沈潜エフェクトを付与
    data modify storage api: Argument.ID set value 608
    data modify storage api: Argument.Stack set from storage api: Return.Difficulty
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
