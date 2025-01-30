#> asset:effect/0300.aigis_vitae/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0300.aigis_vitae/_/end

# 演出
    playsound ui.toast.out player @s ~ ~ ~ 1 1 1
    playsound item.honey_bottle.drink player @s ~ ~ ~ 1 1 1
    playsound entity.witch.drink player @s ~ ~ ~ 0.4 1 1
    particle heart ~ ~2.1 ~ 0.1 0.2 0.1 1 3 normal

# バリアを取得
    data modify storage api: Argument.UUID set value [I;1,3,300,0]
    function api:entity/player/absorption/get
# 回復
    execute store result storage api: Argument.Heal double 0.01 store result score $8C.Temp1 Temporary run data get storage api: Return.Absorption.Amount 50
    data modify storage api: Argument.FixedHeal set value 1b
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# バリアを削除
    data modify storage api: Argument.UUID set value [I;1,3,300,0]
    function api:entity/player/absorption/remove

# リセット
    scoreboard players reset $8C.Temp1
