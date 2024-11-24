#> asset:mob/2000.abstract_angel/bossbar/add.m
#
#
# @input args
#   UUID: int
#   Name: TextComponent
# @within function asset:mob/2000.abstract_angel/init/

#> Val
# @private
#declare score_holder $MaxHealth

# ボスバーを作成する
    $bossbar add asset:angel$(UUID) $(Name)
# 数値設定
    execute store result score $MaxHealth Temporary run function api:mob/get_max_health
    scoreboard players operation $MaxHealth Temporary *= $100 Const
    $execute store result bossbar asset:angel$(UUID) value store result bossbar asset:angel$(UUID) max run scoreboard players get $MaxHealth Temporary
# 見た目設定
    $bossbar set asset:angel$(UUID) color pink
    $bossbar set asset:angel$(UUID) style notched_10
# ボスバーを表示する
    $bossbar set asset:angel$(UUID) players @a
# リセット
    scoreboard players reset $MaxHealth Temporary
