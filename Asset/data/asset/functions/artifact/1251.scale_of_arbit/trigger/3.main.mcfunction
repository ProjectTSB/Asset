#> asset:artifact/1251.scale_of_arbit/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1251.scale_of_arbit/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 0.9 0.6 0.1 1.3 ~ ~1 ~ 0.3 0.3 0.3 0 30 normal @a
    playsound minecraft:block.bell.use player @a ~ ~ ~ 1 0.5 0
    playsound minecraft:block.bell.resonate player @a ~ ~ ~ 0.8 1.4
    playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1.2 0

# 先にバリアバフを解除
    data modify storage api: Argument.ID set value 318
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# 固定ダメージ
    data modify storage api: Argument.Damage set value 20
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.FixedDamage set value true
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# schedule用tag
    tag @s add YR.Schedule

# 1tick後にバリアを得る
    schedule function asset:artifact/1251.scale_of_arbit/trigger/schedule 1t replace
