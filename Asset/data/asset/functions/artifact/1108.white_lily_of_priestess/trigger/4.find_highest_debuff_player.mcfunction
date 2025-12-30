#> asset:artifact/1108.white_lily_of_priestess/trigger/4.find_highest_debuff_player
#
# デバフ数が最も多いプレイヤーを検索する
#
# @within function asset:artifact/1108.white_lily_of_priestess/trigger/3.main

#> Private
# @private
    #declare tag SearchTarget
    #declare tag TempTarget
    #declare score_holder $HighestDebuffCount

# 検索対象：使用者を除く、デバフ解除対象ではなく、最もデバフ数が多いプレイヤー

# 使用者を除く、デバフ数が1以上のプレイヤーに検索対象Tagを付与
    tag @a[tag=!ClearTarget,tag=!this,scores={Temporary=1..},distance=..20] add SearchTarget

# 全員のデバフ数と比較する
    execute as @a[tag=SearchTarget,distance=..20] run scoreboard players operation $HighestDebuffCount Temporary > @s Temporary

# 最大値のプレイヤーに仮ターゲットtagを付与
    execute as @a[tag=SearchTarget,distance=..20] if score @s Temporary = $HighestDebuffCount Temporary run tag @s add TempTarget

# 仮ターゲットの中で近いプレイヤーにターゲットtagを付与
    tag @p[tag=TempTarget,distance=..20] add ClearTarget

# リセット
    tag @a[tag=SearchTarget,distance=..20] remove SearchTarget
    tag @a[tag=TempTarget,distance=..20] remove TempTarget
    scoreboard players reset $HighestDebuffCount Temporary
