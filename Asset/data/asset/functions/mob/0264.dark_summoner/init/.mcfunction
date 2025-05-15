#> asset:mob/0264.dark_summoner/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/alias/264/init

# ハード以上なら即詠唱に入って召喚する
    execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0264.dark_summoner/init/quick_summon
