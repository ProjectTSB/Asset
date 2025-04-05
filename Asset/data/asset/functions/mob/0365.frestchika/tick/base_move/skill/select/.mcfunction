#> asset:mob/0365.frestchika/tick/base_move/skill/select/
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/

# 通常行動停止タグ付与
    tag @s add A5.InAction

# スコアを0に戻す
    scoreboard players set @s General.Mob.Tick 0

# デバッグ用、常にリストを満タンにする
#    data modify storage asset:context this.Skill.List set value [0,1,2]
# 技をランダムに選択
    # ストレージの要素数を取得
        execute store result storage asset:context this.Skill.Count int 1 run data get storage asset:context this.Skill.List
    # 取得した要素数を使ってランダムに技を選ぶ
        function asset:mob/0365.frestchika/tick/base_move/skill/select/roll.m with storage asset:context this.Skill
