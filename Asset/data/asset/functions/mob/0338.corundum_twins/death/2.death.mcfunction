#> asset:mob/0338.corundum_twins/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0338.corundum_twins/death/1.trigger

# 独自処理に移譲
# 設計上他mobや他箇所から直接2.deathを呼ぶのは好ましくなさそうなため、実態は独自処理に書く
    function asset:mob/0338.corundum_twins/death/app/1.check
