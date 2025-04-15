#> asset:artifact/0012.sketchy_herb/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0012.sketchy_herb/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# エフェクト効果
    effect give @s minecraft:strength 60 10 true
    effect give @s minecraft:resistance 60 1 true
    effect give @s minecraft:nausea 60 0 true

# 毒
    data modify storage api: Argument.ID set value 29
    data modify storage api: Argument.Stack set value 4
    data modify storage api: Argument.Duration set value 300
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# ダメージ
    data modify storage api: Argument.Damage set value 6
    data modify storage api: Argument.BypassModifier set value true
    function api:damage/modifier
    data modify storage api: Argument.BypassArmorDefense set value true
    data modify storage api: Argument.BypassArmorToughness set value true
    data modify storage api: Argument.BypassEnchantments set value true
    data modify storage api: Argument.BypassDifficulty set value true
    data modify storage api: Argument.DeathMessage set value ['{"translate":"%1$s はハッパの中毒性に耐えられなかった","with":[{"selector":"@s"}]}']
    function api:damage/
    function api:damage/reset

# 演出
    particle minecraft:smoke ~ ~ ~ 1 1 1 0.1 500 force @s
    playsound minecraft:block.honey_block.fall player @s ~ ~ ~ 1 0.1
    tellraw @s [{"text":"気分が不安定になってゆく……","color":"dark_green","italic":true}]
