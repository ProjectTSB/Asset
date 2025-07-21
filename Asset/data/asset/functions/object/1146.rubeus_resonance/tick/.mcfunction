#> asset:object/1146.rubeus_resonance/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1146/tick

# Tick 加算
    scoreboard players add @s General.Object.Tick 1
# Ownerチェック
    function asset:object/1146.rubeus_resonance/tick/get_owner/
# 攻撃処理
    function asset:object/1146.rubeus_resonance/tick/attack/
# リセット
    tag @a[tag=VU.Owner,limit=1] remove VU.Owner
# 消滅処理
    kill @s[scores={General.Object.Tick=6..}]
