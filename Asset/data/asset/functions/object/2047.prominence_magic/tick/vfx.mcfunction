#> asset:object/2047.prominence_magic/tick/vfx
#
# vfx
#
# @within function asset:object/2047.prominence_magic/tick/2nd_blast_ready

# 予告を召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride set value {Tick:15,Color:11141120,Scale:[3.2f,3.2f,0.01f]}
    function api:object/summon

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAOwBsArABwBGcjADALSMBmlt7ALACZBAQ3b041LuxaCAjA1b9+cgJyswBAHYiAtgmSAwxQAEczWBgiMegM5JwKAPaEtEJINYEUcV3Az2wADcRbEIDcAAPJE8wKGiAX3iCa1I0QjtEOQA6agIbCCs3RBi4bGw0GBsDOVYYjEcCiAMYtBsAUTKKqraAR0IQ7CgAZUtvckQuEKrEgF0gA_3
# 円 1
particle flame ^0 ^ ^-1.6 ~ ~1000000 ~ 0.0000001 0
particle flame ^0.49443 ^ ^-1.52169 ~ ~1000000 ~ 0.0000001 0
particle flame ^0.94046 ^ ^-1.29443 ~ ~1000000 ~ 0.0000001 0
particle flame ^1.29443 ^ ^-0.94046 ~ ~1000000 ~ 0.0000001 0
particle flame ^1.52169 ^ ^-0.49443 ~ ~1000000 ~ 0.0000001 0
particle flame ^1.6 ^ ^0 ~ ~1000000 ~ 0.0000001 0
particle flame ^1.52169 ^ ^0.49443 ~ ~1000000 ~ 0.0000001 0
particle flame ^1.29443 ^ ^0.94046 ~ ~1000000 ~ 0.0000001 0
particle flame ^0.94046 ^ ^1.29443 ~ ~1000000 ~ 0.0000001 0
particle flame ^0.49443 ^ ^1.52169 ~ ~1000000 ~ 0.0000001 0
particle flame ^0 ^ ^1.6 ~ ~1000000 ~ 0.0000001 0
particle flame ^-0.49443 ^ ^1.52169 ~ ~1000000 ~ 0.0000001 0
particle flame ^-0.94046 ^ ^1.29443 ~ ~1000000 ~ 0.0000001 0
particle flame ^-1.29443 ^ ^0.94046 ~ ~1000000 ~ 0.0000001 0
particle flame ^-1.52169 ^ ^0.49443 ~ ~1000000 ~ 0.0000001 0
particle flame ^-1.6 ^ ^0 ~ ~1000000 ~ 0.0000001 0
particle flame ^-1.52169 ^ ^-0.49443 ~ ~1000000 ~ 0.0000001 0
particle flame ^-1.29443 ^ ^-0.94046 ~ ~1000000 ~ 0.0000001 0
particle flame ^-0.94046 ^ ^-1.29443 ~ ~1000000 ~ 0.0000001 0
particle flame ^-0.49443 ^ ^-1.52169 ~ ~1000000 ~ 0.0000001 0
