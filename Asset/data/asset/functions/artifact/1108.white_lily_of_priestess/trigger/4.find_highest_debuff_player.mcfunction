#> asset:artifact/1108.white_lily_of_priestess/trigger/4.find_highest_debuff_player
#
# デバフ数が最も多いプレイヤーを検索する
#
# @within function asset:artifact/1108.white_lily_of_priestess/trigger/3.main

#> Private
# @private
    #declare tag SearchTarget
    #declare score_holder $HighestDebuffCount

# 検索対象：使用者を除く、デバフ解除対象ではなく、最もデバフ数が多いプレイヤー

# 使用者を除く、デバフ数が1以上のプレイヤーに検索対象Tagを付与
    tag @a[tag=!ClearTarget,tag=!this,scores={Temporary=1..}] add SearchTarget

# 全員のデバフ数と比較する
    execute as @a[tag=SearchTarget] run scoreboard players operation $HighestDebuffCount Temporary > @s Temporary

# 特定したプレイヤーにTagを付与
# SearchTargetとBuffTargetを両立するプレイヤーがいるのは、検索対象のプレイヤーを特定済みの場合のみ
    execute as @a[tag=SearchTarget] unless entity @p[tag=SearchTarget,tag=ClearTarget] if score @s Temporary = $HighestDebuffCount Temporary run tag @s add ClearTarget

# リセット
    tag @a[tag=SearchTarget] remove SearchTarget
    scoreboard players reset $HighestDebuffCount Temporary
