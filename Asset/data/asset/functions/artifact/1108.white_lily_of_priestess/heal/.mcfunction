#> asset:artifact/1108.white_lily_of_priestess/heal/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1108/heal/


#> Private
# @private
    #declare score_holder $TargetCount

# 効果範囲内のプレイヤーにTemporaryで保有デバフ数が保存されている

# 演出
    execute rotated ~ 0 positioned ~ ~0.3 ~ run function asset:artifact/1108.white_lily_of_priestess/heal/vfx
    playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 0.4 2
    playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 0.4 1.8
    playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 0.4 1.5

# 使用者を除くデバフ数が最も多いプレイヤー2名を検索する
    execute if entity @p[tag=!ClearTarget,tag=!this,distance=..20] run function asset:artifact/1108.white_lily_of_priestess/heal/4.find_highest_debuff_player
    execute if entity @p[tag=!ClearTarget,tag=!this,distance=..20] run function asset:artifact/1108.white_lily_of_priestess/heal/4.find_highest_debuff_player

# ClearTargetの人数を取得
    execute store result score $TargetCount Temporary if entity @a[tag=ClearTarget,distance=..20]

# ClearTargetの人数が2未満なら使用者にClearTargetを付与
    execute unless score $TargetCount Temporary matches 2.. run tag @s add ClearTarget

# デバフ解除対象のデバフを2つ解除する
    execute as @a[tag=ClearTarget] at @s run function asset:artifact/1108.white_lily_of_priestess/heal/5.clear_debuff

# リセット
    scoreboard players reset $TargetCount Temporary
    tag @a[tag=ClearTarget] remove ClearTarget
