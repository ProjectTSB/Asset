#> asset:artifact/0730.lake_reflecting_starry_sky/_index.d
# @private

#> tag
# @within function asset:artifact/0730.lake_reflecting_starry_sky/click/lake/main
    #declare score_holder $Interval

#> 湖本体のTag
# @within function
#   asset:artifact/0730.lake_reflecting_starry_sky/click/
#   asset:artifact/0730.lake_reflecting_starry_sky/click/lake/damage
#   asset:artifact/0730.lake_reflecting_starry_sky/click/lake/loop
#   asset:artifact/0730.lake_reflecting_starry_sky/click/rejoin_branch
#   asset:artifact/0730.lake_reflecting_starry_sky/click/lake/wave/**
    #declare tag KA.Lake
    #declare tag Target

#> 湖が召喚する波紋のTag
# @within function
#   asset:artifact/0730.lake_reflecting_starry_sky/click/lake/ripple/**
#   asset:artifact/0730.lake_reflecting_starry_sky/click/rejoin_branch
    #declare tag KA.Ripple
    #declare tag RippleTarget
    #declare tag SpreadMarker

#> Rejoin関係のTag
# @within function
#   asset:artifact/0730.lake_reflecting_starry_sky/click/
#   asset:artifact/0730.lake_reflecting_starry_sky/rejoin_process
#   asset:artifact/0730.lake_reflecting_starry_sky/click/rejoin_branch
#   asset:artifact/0730.lake_reflecting_starry_sky/click/lake/ripple/summon_position
    #declare tag KA.RejoinTarget
