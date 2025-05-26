#> asset:object/1147.sapphirus_resonance/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1147/tick

# Tick 加算
    scoreboard players add @s General.Object.Tick 1
# Owner チェック
    function asset:object/1147.sapphirus_resonance/tick/get_owner/
# 攻撃処理
    function asset:object/1147.sapphirus_resonance/tick/attack/
# リセット
    tag @a[tag=VV.Owner,limit=1] remove VV.Owner
# 消滅処理
    kill @s[scores={General.Object.Tick=11..}]
