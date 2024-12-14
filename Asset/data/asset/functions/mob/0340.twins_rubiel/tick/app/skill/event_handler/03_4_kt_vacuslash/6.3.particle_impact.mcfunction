#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/6.3.particle_impact
#
# アニメーションのイベントハンドラ Kt真空斬り 演出
#
# @within
#    function asset:mob/0340.twins_rubiel/**

# ダメージ
    execute if score @s 9G.DamageCooldown matches ..0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/5.2.damage_impact

# 以下演出
particle explosion ^ ^ ^ 0.3 0.1 0.3 0 1
particle explosion ^ ^ ^1 0.3 0.1 0.3 0 1
particle explosion ^ ^ ^2 0.3 0.1 0.3 0 1
particle poof ^ ^ ^ 0.3 0.1 0.3 0.1 5
particle poof ^ ^ ^1 0.3 0.1 0.3 0.1 5
particle poof ^ ^ ^2 0.3 0.1 0.3 0.1 5
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYATABwCsAZgGxE0BGAtAIa0DGLALHTVRZMyARh4sADEQk1qFJgHY6PTmFwY2AWwTJAW74ACMi04B7GFGNmLp82rAw2AJy0BnJOFN4MEJCIW4aRxNNdzAANzYUPB1wAA8kCVwoBIBfFNwIE1CIqJiweMREsGTEOgA6CjTcExoaFzgfQtwmOAAvNDhHBNw0FwAhNo7HAFEARzxIlCgAZQdOOBJEGkj6qvBoeFJ0LDsCYlJ5qgBOCSOacXOAZjheBTY6dmYHhU4jo8uJHhEmKTI7DW0pAMRhs1islnMEOSuAczk0bkQHhMXkaZCKgWC2Ui0VCBQkFSSqXSkCyiPC2LyeIJxSQFDKZCqYBqdQa3TALXanTZvQGnJG40mMzmCyQyxQq3S61gOlQmBw+EIizAl2ucColyYgmE514PAoEnYTDYbBYlwoRDgCjIcDYZDYr3+WhlwKhrtBULssNcoU83l8IgCQRCZJyOLJBUk1JKEkZmSxuVxSEjFEJiB4ZSOjOZ9UaRQ5Q25-UGnTGExQU1m9pFSxWcDSAF0gA_3
# 線 2-copy-copy-copy-copy
particle dust 100000000 1 1 1.5 ^ ^0 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^0.43158 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^0.86316 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^1.29474 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^1.72632 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^2.15789 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^2.58947 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^3.02105 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^3.45263 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^3.88421 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^4.31579 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^4.74737 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^5.17895 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^5.61053 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^6.04211 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^6.47368 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^6.90526 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^7.33684 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^7.76842 ^0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^8.2 ^0.8 0.3 0.3 0.3 0 3
# 線 2-copy-copy-copy
particle dust 100000000 1 1 1.5 ^ ^0 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^0.425 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^0.85 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^1.275 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^1.7 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^2.125 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^2.55 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^2.975 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^3.4 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^3.825 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^4.25 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^4.675 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^5.1 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^5.525 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^5.95 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^6.375 ^0 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^6.8 ^0 0.3 0.3 0.3 0 3
# 線 2-copy-copy-copy-copy
particle dust 100000000 1 1 1.5 ^ ^0 ^-0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^0.49 ^-0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^0.98 ^-0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^1.47 ^-0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^1.96 ^-0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^2.45 ^-0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^2.94 ^-0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^3.43 ^-0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^3.92 ^-0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^4.41 ^-0.8 0.3 0.3 0.3 0 3
particle dust 100000000 1 1 1.5 ^ ^4.9 ^-0.8 0.3 0.3 0.3 0 3
