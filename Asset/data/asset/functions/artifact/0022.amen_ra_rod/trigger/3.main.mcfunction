#> asset:artifact/0022.amen_ra_rod/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0022.amen_ra_rod/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 光玉を召喚
    execute if predicate lib:is_sneaking as @e[type=#lib:living,type=!player,tag=!ExtendedCollision,tag=!Uninterferable,distance=..15] run function asset:artifact/0022.amen_ra_rod/trigger/summon_1
    execute if predicate lib:is_sneaking as @e[type=#lib:living,type=!player,tag= ExtendedCollision,distance=..15] run function api:mob/apply_to_forward_target/with_non-idempotent.m {CB:"asset:artifact/0022.amen_ra_rod/trigger/summon_1",Key:"asset:artifact/0022.amen_ra_rod/trigger/3.main",IsForwardedOnly:true}
    execute unless predicate lib:is_sneaking as @e[type=#lib:living,type=!player,tag=!ExtendedCollision,tag=!Uninterferable,distance=..15] run function asset:artifact/0022.amen_ra_rod/trigger/summon_2
    execute unless predicate lib:is_sneaking as @e[type=#lib:living,type=!player,tag= ExtendedCollision,distance=..15] run function api:mob/apply_to_forward_target/with_non-idempotent.m {CB:"asset:artifact/0022.amen_ra_rod/trigger/summon_2",Key:"asset:artifact/0022.amen_ra_rod/trigger/3.main",IsForwardedOnly:true}
    function api:mob/apply_to_forward_target/reset_initial_apply.m {Key:"asset:artifact/0022.amen_ra_rod/trigger/3.main"}
