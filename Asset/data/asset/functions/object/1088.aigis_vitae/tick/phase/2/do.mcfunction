#> asset:object/1088.aigis_vitae/tick/phase/2/do
# @within function asset:object/1088.aigis_vitae/tick/phase/2/

# 補正を取得
    execute as @a[tag=38.Owner,limit=1] run function api:modifier/heal/get
    execute store result score $38.Temp1 Temporary run data get storage api: Return.Heal 100
# バリアの付与量を計算
    scoreboard players set $38.Temp2 Temporary 30
    execute store result storage api: Argument.FieldOverride.Barrier double 0.01 run scoreboard players operation $38.Temp2 Temporary *= $38.Temp1 Temporary
# エフェクトを付与
    data modify storage api: Argument.ID set value 300
    execute as @a[distance=..10] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
# リセット
    scoreboard players reset $38.Temp1
    scoreboard players reset $38.Temp2
