#> asset:artifact/0342.super_dragon_bell/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0342.super_dragon_bell/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.horse.gallop player @a ~ ~ ~ 1.0 0.5
    playsound block.bell.use player @a ~ ~ ~ 1.0 1.5
    particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 30

# スーパードラゴン召喚
    data modify storage api: Argument.ID set value 444
    execute positioned ~ ~0.1 ~ run function api:mob/summon
