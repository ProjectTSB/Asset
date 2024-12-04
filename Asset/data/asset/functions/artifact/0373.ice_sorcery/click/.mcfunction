#> asset:artifact/0373.ice_sorcery/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/373/click/


# 演出
    playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1 1
    playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1 1

# スコアを付与する。スコア分の時間ビームする
    scoreboard players add @s AD.BeamTime 5

# ビーム発射
    schedule function asset:artifact/0373.ice_sorcery/click/3.1.beamshot 1t replace