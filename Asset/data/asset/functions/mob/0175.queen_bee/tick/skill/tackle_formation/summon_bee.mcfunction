#> asset:mob/0175.queen_bee/tick/skill/tackle_formation/summon_bee
#
# 隊列用のハチ
#
# @within function asset:mob/0175.queen_bee/tick/skill/tackle_formation/

# 何匹目かをカウント
    scoreboard players add @s 4V.Count 1

# 召喚
# 中身が見えるのを対策するため100ブロック上に召喚する
    data modify storage api: Argument.ID set value 429
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Bee.Formation
    execute store result storage api: Argument.FieldOverride.Count int 1 run scoreboard players get @s 4V.Count
    execute store result storage api: Argument.FieldOverride.QueenID int 1 run scoreboard players get @s MobUUID
    execute positioned ~ ~100 ~ run function api:mob/summon
