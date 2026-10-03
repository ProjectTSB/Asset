#> asset:object/1166.after_glow/tick/check
#
# Objectのビームの着弾地点に敵がいるかの確認
#
# @within asset:object/1166.after_glow/tick/
#> Private
# @private
    #declare score_holder $UserID
    #declare tag 14E.Temporary
    #declare tag 14E.Success

# 着弾地点のチェック
# 半径2.5高さ5の円柱型範囲内
    data modify storage lib: Argument.BoundingCylinder.Radius set value 2.5
    data modify storage lib: Argument.BoundingCylinder.Height set value 6
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..128]"
    execute positioned ~ ~-1 ~ run function lib:bounding_cylinder/

# いるならそのまま攻撃処理に分岐
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=BoundingCylinder,tag=!Uninterferable,distance=..128] run return run function asset:object/1166.after_glow/tick/beem

# そうでないなら抽選に
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary at @s run function asset:object/1166.after_glow/tick/check_hotbar

# 最もhpの高い敵を検索し、tp(発動プレイヤーの位置で実行)
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
# 抽選のタグがあるなら成功
    execute as @a[tag=14E.Success] if score @s UserID = $UserID Temporary at @s run summon marker ~ ~ ~ {Tags:[14E.Temporary]}
    execute at @e[type=marker,tag=14E.Temporary,sort=nearest,limit=1] run function asset:object/1166.after_glow/tick/find_highest_hp_enemy
    kill @e[type=marker,tag=14E.Temporary,sort=nearest,limit=1]

# 使い終わったスコアのリセット
    scoreboard players reset @a Temporary
# tagの削除
    tag @a remove 14E.Success

# ビーム発射
    execute at @s run function asset:object/1166.after_glow/tick/beem
