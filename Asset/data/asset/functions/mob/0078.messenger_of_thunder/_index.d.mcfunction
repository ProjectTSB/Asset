#> asset:mob/0078.messenger_of_thunder/_index.d
# @private

#> Tag
# @within function asset:mob/0078.messenger_of_thunder/**
    #declare tag 26.HPLess50Per
    #declare tag 26.Teleport

#> 召喚地点記録Marker
# @within function
#   asset:mob/0078.messenger_of_thunder/death/
#   asset:mob/0078.messenger_of_thunder/init/
#   asset:mob/0078.messenger_of_thunder/tick/
#   asset:mob/0078.messenger_of_thunder/kill_objects
    #declare tag 26.SpawnPoint

#> スキル用
# @within function
#   asset:mob/0078.messenger_of_thunder/tick/**
#   asset:mob/0078.messenger_of_thunder/tick/skill/**/**
    #declare tag 26.Thunder
    #declare tag 26.ThunderCurtain
    #declare tag 26.ReturnThunder
    #declare tag 26.TeleportSpread
    #declare tag 26.PredictThunder
    #declare tag 26.CrossThunder
    #declare tag 26.ConsecutiveAttack
    #declare tag 26.Already
    #declare tag 26.TargetPlayer
    #declare tag 26.NotFirst
    #declare tag 26.SpreadMarker
    #declare tag 26.RotationMarker
    #declare score_holder $Interval
    #declare score_holder $Random
