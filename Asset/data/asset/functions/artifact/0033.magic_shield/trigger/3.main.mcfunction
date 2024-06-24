#> asset:artifact/0033.magic_shield/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0033.magic_shield/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound block.anvil.use player @a ~ ~ ~ 0.5 0.5 0
    particle enchanted_hit ~ ~1 ~ 0.2 0.2 0.2 1 30

# プレイヤーにタグを付与
# check_conditionや4.damage_triggerで、apiを叩くかTagでやるか迷っているのでレビューで教えてほしい
    tag @s add X.MagicShield

# プレイヤーにバフを付与
    data modify storage api: Argument.ID set value 201
    function api:entity/mob/effect/give
