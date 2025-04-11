#> asset:object/2088.patriot_launcher/_index.d
# @private

#> patriot_launcher
# @within
#   function asset:object/2088.patriot_launcher/**
    #declare tag PatriotLauncher.Body
    #declare tag PatriotLauncher.DisplayName
    #declare tag PatriotLauncher.Gauge

#> AJ
# @within
#   function asset:object/2088.patriot_launcher/**
#   function asset:mob/0213.terrible_sonic_bomber/**
    #declare function animated_java:patriot_launcher/summon
    #declare function animated_java:patriot_launcher/animations/default/play
    #declare function animated_java:patriot_launcher/remove/this
    #declare function animated_java:patriot_launcher/animations/rotation/apply_frame
    #declare function animated_java:patriot_launcher/animations/reload/play
    #declare function animated_java:patriot_launcher/animations/rotation_no_missile/tween
    #declare function animated_java:patriot_launcher/animations/rotation_no_missile/stop
    #declare function animated_java:patriot_launcher/animations/launch/play
    #declare function animated_java:patriot_launcher/animations/destroy/tween
    #declare function animated_java:patriot_launcher/variants/destroyed/apply
    #declare function animated_java:patriot_launcher/variants/default/apply
    #declare tag PatriotLauncherRoot

#> suffer_damage
# @within
#   function asset:mob/0214.drone/**
#   function asset:object/2088.patriot_launcher/**
#   function asset:object/2082.storm_shadow/**
#   function asset:object/2083.brimstone/**
#   function asset:object/2084.snake_eye/**
    #declare tag PatriotLauncher.HitMissile

#> is_broken
# @within
#   function asset:object/2088.patriot_launcher/**
#   function asset:mob/0213.terrible_sonic_bomber/**
    #declare tag PatriotLauncher.IsBroken
