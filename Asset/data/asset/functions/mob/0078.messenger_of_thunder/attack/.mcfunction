#> asset:mob/0078.messenger_of_thunder/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/78/attack

# バニラ攻撃でないならスーパーメソッド呼び出し
    execute unless data storage asset:context Attack{IsVanilla:true} run function asset:mob/super.attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim] run function asset:mob/0078.messenger_of_thunder/attack/fx

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Vanilla.Normal
    execute if entity @s[tag=26.HPLess50Per] run data modify storage api: Argument.Damage set from storage asset:context this.Damage.Vanilla.HPLess50Per
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷に撃たれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの稲妻に焼け落ちた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..50] run function api:damage/
    function api:damage/reset
