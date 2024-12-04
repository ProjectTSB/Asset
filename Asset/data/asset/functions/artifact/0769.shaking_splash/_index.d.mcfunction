#> asset:artifact/0769.shaking_splash/_index.d
# @private

#> 弾に持たせるTag
# @within function
#   asset:artifact/0769.shaking_splash/click/4.shoot
#   asset:artifact/0769.shaking_splash/click/bullet/**
#   asset:artifact/0769.shaking_splash/rejoin_process
    #declare tag LD.Bullet

#> Init Tag
# @within function asset:artifact/0769.shaking_splash/click/4.shoot
    #declare tag LD.Init

#> ビームで使うTag
# @within function
#   asset:artifact/0769.shaking_splash/click/5.beam
#   asset:artifact/0769.shaking_splash/click/beam_recursive
    #declare tag LandingTarget
