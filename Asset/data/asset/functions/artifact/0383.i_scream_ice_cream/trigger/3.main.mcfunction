#> asset:artifact/0383.i_scream_ice_cream/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0383.i_scream_ice_cream/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 1.1
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1 1
    particle minecraft:block blue_ice ~ ~3 ~ 4 4 4 10 1000
    particle minecraft:block ice ~ ~3 ~ 4 4 4 10 1000
    execute if predicate api:area/is_breakable run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:frosted_ice replace minecraft:water[level=0]

# クソ寒いダジャレ
    function asset:artifact/0383.i_scream_ice_cream/trigger/message/puns

# 2秒後に「場が凍りついた...」
    schedule function asset:artifact/0383.i_scream_ice_cream/trigger/message/place_froze 2s append

# 移動速度低下付与
# 天使に対しては効果が落ちる
    effect give @e[type=#lib:living_without_player,tag=!Enemy.Boss,tag=!Uninterferable,distance=..5] slowness 30 4
    effect give @e[type=#lib:living_without_player,tag=Enemy.Boss,tag=!Uninterferable,distance=..5] slowness 4 1

# ダメージ
    data modify storage api: Argument.Damage set value 32f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..5] run function api:damage/
    function api:damage/reset
