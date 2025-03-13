#> asset:mob/0175.queen_bee/tick/skill/tackle_formation/summon_bee
#
# 隊列用のハチ
#
# @within function asset:mob/0175.queen_bee/tick/skill/tackle_formation/

# 演出
    particle cloud ~ ~1.65 ~ 0 0 0 0.2 10 normal @a

# 何匹目かをカウント
    scoreboard players add @s 4V.Count 1

# 召喚
    data modify storage api: Argument.ID set value 429
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Bee.Formation
    execute store result storage api: Argument.FieldOverride.Count int 1 run scoreboard players get @s 4V.Count
    execute store result storage api: Argument.FieldOverride.QueenID int 1 run scoreboard players get @s MobUUID
    function api:mob/summon
