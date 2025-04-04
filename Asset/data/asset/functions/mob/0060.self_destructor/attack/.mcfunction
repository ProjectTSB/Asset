#> asset:mob/0060.self_destructor/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/60/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# ダメージ
    data modify storage api: Argument.Damage set value 8.0
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより粉々になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの衝撃で粉砕された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# 演出
    execute unless block ~ ~ ~ water run playsound entity.tnt.primed hostile @a ~ ~ ~ 1 0.7 0
    execute unless block ~ ~ ~ water run particle smoke ~ ~1.8 ~ 0.3 0.25 0.3 0 15 normal @a
    execute unless block ~ ~ ~ water run particle flame ~ ~1.8 ~ 0.3 0.25 0.3 0 5 normal @a

# 自爆カウント
    scoreboard players add @s 1O.ExplodeCnt 1

# 自爆カウント表示を更新
    execute if score @s 1O.ExplodeCnt matches 1 on passengers run data modify entity @s text set value '{"text":"2","font":"damage"}'
    execute if score @s 1O.ExplodeCnt matches 2 on passengers run data modify entity @s text set value '{"text":"1","font":"damage"}'
    execute if score @s 1O.ExplodeCnt matches 3 on passengers run data modify entity @s text set value '{"text":"0","font":"damage"}'

# 一度でも戦闘したかどうかをフィールドで記録
    data modify storage asset:context this.Fought set value true
