#> asset:artifact/1047.life_steal_emblem/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1047.life_steal_emblem/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

#> Val
# @private
    #declare score_holder $T3.MaxHP
    #declare score_holder $T3.CurrentHP

# 体力
    # 最大体力を取得
        execute store result score $T3.MaxHP Temporary run attribute @s minecraft:generic.max_health get

    # 現在体力を取得
        function api:data_get/health
        execute store result score $T3.CurrentHP Temporary run data get storage api: Health 1000

    # 割合
        scoreboard players operation $T3.CurrentHP Temporary /= $T3.MaxHP Temporary

# 体力が25%以上か確認
    execute unless score $T3.CurrentHP Temporary matches 251.. run function asset:artifact/1047.life_steal_emblem/trigger/error_message
    execute unless score $T3.CurrentHP Temporary matches 251.. run tag @s remove CanUsed
    scoreboard players reset $T3.MaxHP Temporary
    scoreboard players reset $T3.CurrentHP Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1047.life_steal_emblem/trigger/3.main