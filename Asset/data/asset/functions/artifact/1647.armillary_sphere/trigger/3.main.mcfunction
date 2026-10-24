#> asset:artifact/1647.armillary_sphere/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1647.armillary_sphere/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
# Effect426付与
    data modify storage api: Argument.ID set value 426
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    particle sonic_boom ~ ~0.5 ~ 0 0 0 1 1
    particle witch ~ ~0.5 ~ 0.2 0.25 0.2 0 25
    playsound block.copper_trapdoor.open player @a ~ ~ ~ 1.0 0.5
    playsound block.trial_spawner.detect_player player @a ~ ~ ~ 0.8 0.7
    playsound block.amethyst_block.chime player @a ~ ~ ~ 2.0 0.7
    playsound block.amethyst_block.resonate player @a ~ ~ ~ 2.0 0.5
