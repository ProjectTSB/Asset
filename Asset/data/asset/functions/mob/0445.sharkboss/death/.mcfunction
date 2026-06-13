#> asset:mob/0445.sharkboss/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/445/death

# 継承元の処理実行
    function asset:mob/super.death

# アニメーション終了
    #function asset:mob/0445.sharkboss/tick/action/utility/end

# 死亡アニメーション制御用オブジェクト召還
    data modify storage api: Argument.ID set value 2287
    function api:object/summon
