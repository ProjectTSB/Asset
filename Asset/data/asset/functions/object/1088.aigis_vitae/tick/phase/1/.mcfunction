#> asset:object/1088.aigis_vitae/tick/phase/1/
#
# フェーズ1: チャージ
#
# @within function asset:object/1088.aigis_vitae/tick/

# 演出
    execute if score @s General.Object.Tick matches ..60 positioned ~ ~1.2 ~ run function asset:object/1088.aigis_vitae/tick/phase/1/effect/1
    execute if score @s General.Object.Tick matches ..60 run scoreboard players operation $38.Temp1 Temporary = @s General.Object.Tick
    execute if score @s General.Object.Tick matches ..60 run scoreboard players operation $38.Temp1 Temporary %= $10 Const
    execute if score @s General.Object.Tick matches ..60 if score $38.Temp1 Temporary matches 0 positioned ~ ~1.2 ~ run function asset:object/1088.aigis_vitae/tick/phase/1/effect/2
    execute if score @s General.Object.Tick matches ..60 run scoreboard players reset $38.Temp1 Temporary

# プレイヤーに張り付き
# 3Dモデルが実装されれば定点実行に変更する
    execute if score @s General.Object.Tick matches ..60 run tp @s @a[tag=38.Owner,limit=1]

# 次に進む
    execute if score @s General.Object.Tick matches 60.. run function asset:object/1088.aigis_vitae/tick/phase/proceed
