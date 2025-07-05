#> asset:artifact/0237.schrodingers_cat/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0237.schrodingers_cat/trigger/1.trigger

#> Private
# @private
#declare score_holder $FallDistance

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

# 落下距離チェック
    function api:data_get/fall_distance
    execute store result score $FallDistance Temporary run data get storage api: FallDistance
    execute unless score $FallDistance Temporary matches 25.. run tag @s remove CanUsed
    scoreboard players reset $FallDistance Temporary


# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0237.schrodingers_cat/trigger/3.main
