#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/from_list/
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/

# 通常行動停止タグ付与
    tag @s add C5.InAction

# スコアを0に戻す
    scoreboard players set @s General.Mob.Tick 0

# Blesless時、動作回数をカウント
    execute if predicate api:global_vars/difficulty/min/3_blessless run scoreboard players add @s C5.Count.Move 1

# Blesless後半戦時、即座に近くのランダムなプレイヤーに向き直る
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s C5.Phase matches 2.. facing entity @r[gamemode=!spectator,distance=..256] feet run tp @s ~ ~ ~ ~ ~

# デバッグ用、常にリストを満タンにする
#    data modify storage asset:context this.Skill.List set value [0,1,2]
# 技をランダムに選択
    # ストレージの要素数を取得
        execute store result storage asset:context this.Skill.Count int 1 run data get storage asset:context this.Skill.List
    # 取得した要素数を使ってランダムに技を選ぶ
        function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/from_list/roll.m with storage asset:context this.Skill
