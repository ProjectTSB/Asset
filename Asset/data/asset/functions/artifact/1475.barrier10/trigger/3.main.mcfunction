#> asset:artifact/1475.barrier10/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1475.barrier10/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
# 演出
    playsound block.anvil.use player @a ~ ~ ~ 0.5 0.5 0
    # particle enchanted_hit ~ ~1 ~ 0.2 0.2 0.2 1 30

# プレイヤーにバフを付与
    data modify storage api: Argument.ID set value 363
    execute as @a[distance=..3,sort=nearest,limit=6] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
