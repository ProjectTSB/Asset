#> asset:object/1088.aigis_vitae/tick/phase/2/
#
# フェーズ2: 発動
#
# @within function asset:object/1088.aigis_vitae/tick/

# 自壊
    execute if score @s General.Object.Tick matches 1 unless entity @a[tag=38.Owner,limit=1] run function asset:object/1088.aigis_vitae/tick/kill

# 演出
    execute if score @s General.Object.Tick matches 1 positioned ~ ~1.2 ~ run function asset:object/1088.aigis_vitae/tick/phase/2/effect

# 回復
    execute if score @s General.Object.Tick matches 1 positioned ~ ~3 ~ run function asset:object/1088.aigis_vitae/tick/phase/2/do

# 次に進む
    execute if score @s General.Object.Tick matches 10.. run function asset:object/1088.aigis_vitae/tick/phase/proceed
