#> asset:mob/0410.heiloang/tick/event/
#
# アニメーションイベントの振り分け処理
#
# @within asset:mob/0410.heiloang/tick/

# ヘルファイア
    execute if entity @s[tag=BE.Skill.Hellfire] run function asset:mob/0410.heiloang/tick/event/hellfire/

# アダマントスパイク
    execute if entity @s[tag=BE.Skill.Adamant] run function asset:mob/0410.heiloang/tick/event/adamant_spike/
