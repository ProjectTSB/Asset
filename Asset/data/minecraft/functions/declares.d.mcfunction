#> minecraft:declares.d
# @private

#> declare
# @within **
    #alias vector shulkerA 10000 0 10000                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L40
    #alias vector shulkerB 10000 1 10000                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L41
    #alias vector worldSpawn 23 3 24                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L42
    #declare advancement core:handler/attack                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/advancements/handler/attack.json#L1
    #declare advancement core:handler/consume_item                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/advancements/handler/consume_item.json#L1
    #declare advancement core:handler/damage                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/advancements/handler/damage.json#L1
    #declare advancement core:handler/inventory_change                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/advancements/handler/inventory_change.json#L1
    #declare advancement core:handler/killed                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/advancements/handler/killed.json#L1
    #declare advancement core:handler/using_item                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/advancements/handler/using_item.json#L1
    #declare advancement mob_manager:entity_finder/check_entity_hurt_player           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/advancements/entity_finder/check_entity_hurt_player.json#L1
    #declare advancement mob_manager:entity_finder/check_player_hurt_entity           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/advancements/entity_finder/check_player_hurt_entity.json#L1
    #declare advancement score_to_health:player_tick                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/ScoreToHealth/data/score_to_health/advancements/player_tick.json#L1
    #declare function api:artifact/box/from_id                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/artifact/box/from_id.mcfunction#L1
    #declare function api:artifact/core/from_rarity/foreach                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/artifact/core/from_rarity/foreach.mcfunction#L1
    #declare function api:artifact/give/from_id                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/artifact/give/from_id.mcfunction#L1
    #declare function api:artifact/give/from_rarity                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/artifact/give/from_rarity.mcfunction#L1
    #declare function api:artifact/replace/from_id                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/artifact/replace/from_id.mcfunction#L1
    #declare function api:artifact/spawn/from_id                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/artifact/spawn/from_id.mcfunction#L1
    #declare function api:artifact/spawn/from_rarity                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/artifact/spawn/from_rarity.mcfunction#L1
    #declare function api:artifact/storage/from_id                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/artifact/storage/from_id.mcfunction#L1
    #declare function api:artifact/storage/from_rarity                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/artifact/storage/from_rarity.mcfunction#L1
    #declare function api:common/arguments/pop                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/common/arguments/pop.mcfunction#L1
    #declare function api:common/arguments/stash                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/common/arguments/stash.mcfunction#L1
    #declare function api:damage/                                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/damage/.mcfunction#L1
    #declare function api:damage/modifier                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/damage/modifier.mcfunction#L1
    #declare function api:damage/modifier_continuation                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/damage/modifier_continuation.mcfunction#L1
    #declare function api:damage/modifier_manual                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/damage/modifier_manual.mcfunction#L1
    #declare function api:damage/reset                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/damage/reset.mcfunction#L1
    #declare function api:data_get/abilities                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/abilities.mcfunction#L1
    #declare function api:data_get/absorption_amount                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/absorption_amount.mcfunction#L1
    #declare function api:data_get/active_effects                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/active_effects.mcfunction#L1
    #declare function api:data_get/air                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/air.mcfunction#L1
    #declare function api:data_get/attributes                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/attributes.mcfunction#L1
    #declare function api:data_get/brain                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/brain.mcfunction#L1
    #declare function api:data_get/custom_name                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/custom_name.mcfunction#L1
    #declare function api:data_get/custom_name_visible                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/custom_name_visible.mcfunction#L1
    #declare function api:data_get/data_version                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/data_version.mcfunction#L1
    #declare function api:data_get/death_time                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/death_time.mcfunction#L1
    #declare function api:data_get/dimension                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/dimension.mcfunction#L1
    #declare function api:data_get/ender_items                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/ender_items.mcfunction#L1
    #declare function api:data_get/entered_nether_position                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/entered_nether_position.mcfunction#L1
    #declare function api:data_get/fall_distance                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/fall_distance.mcfunction#L1
    #declare function api:data_get/fall_flying                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/fall_flying.mcfunction#L1
    #declare function api:data_get/fire                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/fire.mcfunction#L1
    #declare function api:data_get/food_exhaustion_level                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/food_exhaustion_level.mcfunction#L1
    #declare function api:data_get/food_level                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/food_level.mcfunction#L1
    #declare function api:data_get/food_saturation_level                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/food_saturation_level.mcfunction#L1
    #declare function api:data_get/food_tick_timer                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/food_tick_timer.mcfunction#L1
    #declare function api:data_get/glowing                                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/glowing.mcfunction#L1
    #declare function api:data_get/health                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/health.mcfunction#L1
    #declare function api:data_get/hurt_time                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/hurt_time.mcfunction#L1
    #declare function api:data_get/id                                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/id.mcfunction#L1
    #declare function api:data_get/inventory                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/inventory.mcfunction#L1
    #declare function api:data_get/invulnerable                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/invulnerable.mcfunction#L1
    #declare function api:data_get/motion                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/motion.mcfunction#L1
    #declare function api:data_get/no_ai                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/no_ai.mcfunction#L1
    #declare function api:data_get/no_gravity                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/no_gravity.mcfunction#L1
    #declare function api:data_get/on_ground                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/on_ground.mcfunction#L1
    #declare function api:data_get/passengers                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/passengers.mcfunction#L1
    #declare function api:data_get/player_game_type                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/player_game_type.mcfunction#L1
    #declare function api:data_get/portal_cooldown                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/portal_cooldown.mcfunction#L1
    #declare function api:data_get/pos                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/pos.mcfunction#L1
    #declare function api:data_get/previous_player_game_type                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/previous_player_game_type.mcfunction#L1
    #declare function api:data_get/recipe_book                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/recipe_book.mcfunction#L1
    #declare function api:data_get/root_vehicle                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/root_vehicle.mcfunction#L1
    #declare function api:data_get/rotation                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/rotation.mcfunction#L1
    #declare function api:data_get/score                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/score.mcfunction#L1
    #declare function api:data_get/seen_credits                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/seen_credits.mcfunction#L1
    #declare function api:data_get/selected_item                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/selected_item.mcfunction#L1
    #declare function api:data_get/selected_item_slot                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/selected_item_slot.mcfunction#L1
    #declare function api:data_get/shoulder_entity_left                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/shoulder_entity_left.mcfunction#L1
    #declare function api:data_get/shoulder_entity_right                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/shoulder_entity_right.mcfunction#L1
    #declare function api:data_get/silent                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/silent.mcfunction#L1
    #declare function api:data_get/sleep_timer                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/sleep_timer.mcfunction#L1
    #declare function api:data_get/sleeping_x                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/sleeping_x.mcfunction#L1
    #declare function api:data_get/sleeping_y                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/sleeping_y.mcfunction#L1
    #declare function api:data_get/sleeping_z                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/sleeping_z.mcfunction#L1
    #declare function api:data_get/spawn_forced                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/spawn_forced.mcfunction#L1
    #declare function api:data_get/spawn_x                                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/spawn_x.mcfunction#L1
    #declare function api:data_get/spawn_y                                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/spawn_y.mcfunction#L1
    #declare function api:data_get/spawn_z                                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/spawn_z.mcfunction#L1
    #declare function api:data_get/tags                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/tags.mcfunction#L1
    #declare function api:data_get/team                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/team.mcfunction#L1
    #declare function api:data_get/uuid                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/uuid.mcfunction#L1
    #declare function api:data_get/xp_level                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/xp_level.mcfunction#L1
    #declare function api:data_get/xp_p                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/xp_p.mcfunction#L1
    #declare function api:data_get/xp_seed                                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/xp_seed.mcfunction#L1
    #declare function api:data_get/xp_total                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/data_get/xp_total.mcfunction#L1
    #declare function api:entity/mob/effect/get/all                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/mob/effect/get/all.mcfunction#L1
    #declare function api:entity/mob/effect/get/from_id                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/mob/effect/get/from_id.mcfunction#L1
    #declare function api:entity/mob/effect/get/size/all                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/mob/effect/get/size/all.mcfunction#L1
    #declare function api:entity/mob/effect/get/size/bad                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/mob/effect/get/size/bad.mcfunction#L1
    #declare function api:entity/mob/effect/get/size/good                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/mob/effect/get/size/good.mcfunction#L1
    #declare function api:entity/mob/effect/give                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/mob/effect/give.mcfunction#L1
    #declare function api:entity/mob/effect/remove/from_id                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/mob/effect/remove/from_id.mcfunction#L1
    #declare function api:entity/mob/effect/remove/from_level                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/mob/effect/remove/from_level.mcfunction#L1
    #declare function api:entity/mob/effect/reset                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/mob/effect/reset.mcfunction#L1
    #declare function api:entity/player/absorption/add                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/player/absorption/add.mcfunction#L1
    #declare function api:entity/player/absorption/get                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/player/absorption/get.mcfunction#L1
    #declare function api:entity/player/absorption/remove                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/player/absorption/remove.mcfunction#L1
    #declare function api:entity/player/get_health_per                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/player/get_health_per.mcfunction#L1
    #declare function api:entity/player/get_mp_per                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/entity/player/get_mp_per.mcfunction#L1
    #declare function api:global_vars/game_progress                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/global_vars/game_progress.mcfunction#L1
    #declare function api:global_vars/get_difficulty                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/global_vars/get_difficulty.mcfunction#L1
    #declare function api:global_vars/islands_purified                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/global_vars/islands_purified.mcfunction#L1
    #declare function api:heal/                                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/heal/.mcfunction#L1
    #declare function api:heal/modifier                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/heal/modifier.mcfunction#L1
    #declare function api:heal/reset                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/heal/reset.mcfunction#L1
    #declare function api:inventory/clear                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/inventory/clear.mcfunction#L1
    #declare function api:inventory/get_size                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/inventory/get_size.mcfunction#L1
    #declare function api:inventory/refer_selected_item_slot/get_item                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/inventory/refer_selected_item_slot/get_item.mcfunction#L1
    #declare function api:inventory/refer_selected_item_slot/replace_air              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/inventory/refer_selected_item_slot/replace_air.mcfunction#L1
    #declare function api:inventory/refer_selected_item_slot/replace_from_shulker_box from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/inventory/refer_selected_item_slot/replace_from_shulker_box.mcfunction#L1
    #declare function api:inventory/set                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/inventory/set.mcfunction#L1
    #declare function api:lost_items/get_length                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/lost_items/get_length.mcfunction#L1
    #declare function api:lost_items/give                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/lost_items/give.mcfunction#L1
    #declare function api:mob/apply_to_forward_target/reset_initial_apply.m           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mob/apply_to_forward_target/reset_initial_apply.m.mcfunction#L1
    #declare function api:mob/apply_to_forward_target/with_idempotent.m               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mob/apply_to_forward_target/with_idempotent.m.mcfunction#L1
    #declare function api:mob/apply_to_forward_target/with_non-idempotent.m           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mob/apply_to_forward_target/with_non-idempotent.m.mcfunction#L1
    #declare function api:mob/deal_dummy_damage                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mob/deal_dummy_damage.mcfunction#L1
    #declare function api:mob/get_health                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mob/get_health.mcfunction#L1
    #declare function api:mob/get_health_percent                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mob/get_health_percent.mcfunction#L1
    #declare function api:mob/get_max_health                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mob/get_max_health.mcfunction#L1
    #declare function api:mob/get_max_health_multiplier                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mob/get_max_health_multiplier.mcfunction#L1
    #declare function api:mob/is_asset_mob                                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mob/is_asset_mob.mcfunction#L1
    #declare function api:mob/kill                                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mob/kill.mcfunction#L1
    #declare function api:mob/lore/get                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mob/lore/get.mcfunction#L1
    #declare function api:mob/remove                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mob/remove.mcfunction#L1
    #declare function api:mob/summon                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mob/summon.mcfunction#L1
    #declare function api:modifier/attack/base/add                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/base/add.mcfunction#L1
    #declare function api:modifier/attack/base/get                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/base/get.mcfunction#L1
    #declare function api:modifier/attack/base/remove                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/base/remove.mcfunction#L1
    #declare function api:modifier/attack/base/update_bonus                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/base/update_bonus.mcfunction#L1
    #declare function api:modifier/attack/fire/add                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/fire/add.mcfunction#L1
    #declare function api:modifier/attack/fire/get                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/fire/get.mcfunction#L1
    #declare function api:modifier/attack/fire/remove                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/fire/remove.mcfunction#L1
    #declare function api:modifier/attack/magic/add                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/magic/add.mcfunction#L1
    #declare function api:modifier/attack/magic/get                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/magic/get.mcfunction#L1
    #declare function api:modifier/attack/magic/remove                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/magic/remove.mcfunction#L1
    #declare function api:modifier/attack/physical/add                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/physical/add.mcfunction#L1
    #declare function api:modifier/attack/physical/get                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/physical/get.mcfunction#L1
    #declare function api:modifier/attack/physical/remove                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/physical/remove.mcfunction#L1
    #declare function api:modifier/attack/thunder/add                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/thunder/add.mcfunction#L1
    #declare function api:modifier/attack/thunder/get                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/thunder/get.mcfunction#L1
    #declare function api:modifier/attack/thunder/remove                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/thunder/remove.mcfunction#L1
    #declare function api:modifier/attack/water/add                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/water/add.mcfunction#L1
    #declare function api:modifier/attack/water/get                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/water/get.mcfunction#L1
    #declare function api:modifier/attack/water/remove                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/attack/water/remove.mcfunction#L1
    #declare function api:modifier/core/fall_resistance/remove                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/core/fall_resistance/remove.mcfunction#L1
    #declare function api:modifier/defense/base/add                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/base/add.mcfunction#L1
    #declare function api:modifier/defense/base/get                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/base/get.mcfunction#L1
    #declare function api:modifier/defense/base/remove                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/base/remove.mcfunction#L1
    #declare function api:modifier/defense/base/update_bonus                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/base/update_bonus.mcfunction#L1
    #declare function api:modifier/defense/fall/get                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/fall/get.mcfunction#L1
    #declare function api:modifier/defense/fire/add                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/fire/add.mcfunction#L1
    #declare function api:modifier/defense/fire/get                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/fire/get.mcfunction#L1
    #declare function api:modifier/defense/fire/remove                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/fire/remove.mcfunction#L1
    #declare function api:modifier/defense/magic/add                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/magic/add.mcfunction#L1
    #declare function api:modifier/defense/magic/get                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/magic/get.mcfunction#L1
    #declare function api:modifier/defense/magic/remove                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/magic/remove.mcfunction#L1
    #declare function api:modifier/defense/physical/add                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/physical/add.mcfunction#L1
    #declare function api:modifier/defense/physical/get                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/physical/get.mcfunction#L1
    #declare function api:modifier/defense/physical/remove                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/physical/remove.mcfunction#L1
    #declare function api:modifier/defense/thunder/add                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/thunder/add.mcfunction#L1
    #declare function api:modifier/defense/thunder/get                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/thunder/get.mcfunction#L1
    #declare function api:modifier/defense/thunder/remove                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/thunder/remove.mcfunction#L1
    #declare function api:modifier/defense/water/add                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/water/add.mcfunction#L1
    #declare function api:modifier/defense/water/get                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/water/get.mcfunction#L1
    #declare function api:modifier/defense/water/remove                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/defense/water/remove.mcfunction#L1
    #declare function api:modifier/fall_resistance/add                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/fall_resistance/add.mcfunction#L1
    #declare function api:modifier/fall_resistance/get                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/fall_resistance/get.mcfunction#L1
    #declare function api:modifier/fall_resistance/remove                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/fall_resistance/remove.mcfunction#L1
    #declare function api:modifier/heal/add                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/heal/add.mcfunction#L1
    #declare function api:modifier/heal/get                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/heal/get.mcfunction#L1
    #declare function api:modifier/heal/remove                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/heal/remove.mcfunction#L1
    #declare function api:modifier/max_health/add                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/max_health/add.mcfunction#L1
    #declare function api:modifier/max_health/get                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/max_health/get.mcfunction#L1
    #declare function api:modifier/max_health/remove                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/max_health/remove.mcfunction#L1
    #declare function api:modifier/max_health/update_bonus                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/max_health/update_bonus.mcfunction#L1
    #declare function api:modifier/max_mp/add                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/max_mp/add.mcfunction#L1
    #declare function api:modifier/max_mp/get                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/max_mp/get.mcfunction#L1
    #declare function api:modifier/max_mp/remove                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/max_mp/remove.mcfunction#L1
    #declare function api:modifier/max_mp/update_bonus                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/max_mp/update_bonus.mcfunction#L1
    #declare function api:modifier/mp_regen/add                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/mp_regen/add.mcfunction#L1
    #declare function api:modifier/mp_regen/get                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/mp_regen/get.mcfunction#L1
    #declare function api:modifier/mp_regen/remove                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/mp_regen/remove.mcfunction#L1
    #declare function api:modifier/receive_heal/add                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/receive_heal/add.mcfunction#L1
    #declare function api:modifier/receive_heal/get                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/receive_heal/get.mcfunction#L1
    #declare function api:modifier/receive_heal/remove                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/modifier/receive_heal/remove.mcfunction#L1
    #declare function api:mp/check                                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mp/check.mcfunction#L1
    #declare function api:mp/fluctuation                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mp/fluctuation.mcfunction#L1
    #declare function api:mp/get_current                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mp/get_current.mcfunction#L1
    #declare function api:mp/get_max                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mp/get_max.mcfunction#L1
    #declare function api:mp/set                                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mp/set.mcfunction#L1
    #declare function api:mp/update_max                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/mp/update_max.mcfunction#L1
    #declare function api:object/summon                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/object/summon.mcfunction#L1
    #declare function api:player_vector/get                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/player_vector/get.mcfunction#L1
    #declare function api:rom/please                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/rom/please.mcfunction#L1
    #declare function api:spawner/subtract_hp                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/spawner/subtract_hp.mcfunction#L1
    #declare function api:teleporter/modify_groups/add                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/teleporter/modify_groups/add.mcfunction#L1
    #declare function api:teleporter/set_activation_state/from_id                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/teleporter/set_activation_state/from_id.mcfunction#L1
    #declare function api:teleporter/set_activation_state/from_nearest                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/teleporter/set_activation_state/from_nearest.mcfunction#L1
    #declare function api:teleporter/unsafe/register_manual                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/teleporter/unsafe/register_manual.mcfunction#L1
    #declare function asset_manager:artifact/create/set_lore/equipment/               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/artifact/create/set_lore/equipment/.mcfunction#L1
    #declare function asset_manager:artifact/create/set_lore/equipment/description    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/artifact/create/set_lore/equipment/description.mcfunction#L1
    #declare function asset_manager:artifact/triggers/equipments/enum/slot.m          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/artifact/triggers/equipments/enum/slot.m.mcfunction#L1
    #declare function asset:datapack/set_activation_state                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/datapack/set_activation_state.mcfunction#L1
    #declare function lib:array/compare                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/compare.mcfunction#L1
    #declare function lib:array/compare_single                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/compare_single.mcfunction#L1
    #declare function lib:array/distinct                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/distinct.mcfunction#L1
    #declare function lib:array/mask                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/mask.mcfunction#L1
    #declare function lib:array/mask_inverted                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/mask_inverted.mcfunction#L1
    #declare function lib:array/math/add                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/math/add.mcfunction#L1
    #declare function lib:array/math/max                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/math/max.mcfunction#L1
    #declare function lib:array/math/min                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/math/min.mcfunction#L1
    #declare function lib:array/math/scalar_multiply                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/math/scalar_multiply.mcfunction#L1
    #declare function lib:array/math/sqr                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/math/sqr.mcfunction#L1
    #declare function lib:array/math/sub                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/math/sub.mcfunction#L1
    #declare function lib:array/math/sum                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/math/sum.mcfunction#L1
    #declare function lib:array/merge                                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/merge.mcfunction#L1
    #declare function lib:array/move                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/move.mcfunction#L1
    #declare function lib:array/packing_chest                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/packing_chest.mcfunction#L1
    #declare function lib:array/picks                                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/picks.mcfunction#L1
    #declare function lib:array/reverse                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/reverse.mcfunction#L1
    #declare function lib:array/revert                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/revert.mcfunction#L1
    #declare function lib:array/session/close                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/session/close.mcfunction#L1
    #declare function lib:array/session/open                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/session/open.mcfunction#L1
    #declare function lib:array/shuffle                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/shuffle.mcfunction#L1
    #declare function lib:array/sort_ascend                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/sort_ascend.mcfunction#L1
    #declare function lib:array/sort_descend                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/array/sort_descend.mcfunction#L1
    #declare function lib:bit_array_to_integer/                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/bit_array_to_integer/.mcfunction#L1
    #declare function lib:bounding_fan/                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/bounding_fan/.mcfunction#L1
    #declare function lib:dimension/get                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/dimension/get.mcfunction#L1
    #declare function lib:distance/as_to_at                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/distance/as_to_at.mcfunction#L1
    #declare function lib:distance/core/abs/x.m                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/distance/core/abs/x.m.mcfunction#L1
    #declare function lib:distance/core/abs/y.m                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/distance/core/abs/y.m.mcfunction#L1
    #declare function lib:distance/core/abs/z.m                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/distance/core/abs/z.m.mcfunction#L1
    #declare function lib:forward_spreader/circle                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/forward_spreader/circle.mcfunction#L1
    #declare function lib:forward_spreader/square                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/forward_spreader/square.mcfunction#L1
    #declare function lib:get_name/                                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/get_name/.mcfunction#L1
    #declare function lib:integer_to_bit_array/                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/integer_to_bit_array/.mcfunction#L1
    #declare function lib:message/artifact/can_not_use_here                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/message/artifact/can_not_use_here.mcfunction#L1
    #declare function lib:message/artifact/condition_not_met                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/message/artifact/condition_not_met.mcfunction#L1
    #declare function lib:message/artifact/dont_have_require_items                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/message/artifact/dont_have_require_items.mcfunction#L1
    #declare function lib:message/invalid_operation                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/message/invalid_operation.mcfunction#L1
    #declare function lib:motion/                                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/motion/.mcfunction#L1
    #declare function lib:random/with_biased/m                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/random/with_biased/m.mcfunction#L1
    #declare function lib:random/with_biased/manual.m                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/random/with_biased/manual.m.mcfunction#L1
    #declare function lib:reflection_bullet/                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/reflection_bullet/.mcfunction#L1
    #declare function lib:rotatable_dxyz/m                                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/rotatable_dxyz/m.mcfunction#L1
    #declare function lib:rotate_display/                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/rotate_display/.mcfunction#L1
    #declare function lib:score_to_health_wrapper/set                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/score_to_health_wrapper/set.mcfunction#L1
    #declare function lib:score_to_move/                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/score_to_move/.mcfunction#L1
    #declare function lib:spread_entity/                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/spread_entity/.mcfunction#L1
    #declare function minecraft:test2                                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/functions/test2.mcfunction#L1
    #declare function minecraft:tests/absorption_api/test                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/functions/tests/absorption_api/test.mcfunction#L1
    #declare function natural_merge_sort:ascend                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/ascend.mcfunction#L1
    #declare function natural_merge_sort:descend                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/descend.mcfunction#L1
    #declare function natural_merge_sort:sys/ascend                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/sys/ascend.mcfunction#L1
    #declare function natural_merge_sort:sys/ascend/loop                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/sys/ascend/loop.mcfunction#L1
    #declare function natural_merge_sort:sys/ascend/shift                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/sys/ascend/shift.mcfunction#L1
    #declare function natural_merge_sort:sys/ascend/take1                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/sys/ascend/take1.mcfunction#L1
    #declare function natural_merge_sort:sys/ascend/take2                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/sys/ascend/take2.mcfunction#L1
    #declare function natural_merge_sort:sys/descend                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/sys/descend.mcfunction#L1
    #declare function natural_merge_sort:sys/descend/loop                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/sys/descend/loop.mcfunction#L1
    #declare function natural_merge_sort:sys/descend/shift                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/sys/descend/shift.mcfunction#L1
    #declare function natural_merge_sort:sys/descend/take1                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/sys/descend/take1.mcfunction#L1
    #declare function natural_merge_sort:sys/descend/take2                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/sys/descend/take2.mcfunction#L1
    #declare function natural_merge_sort:sys/setup                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/sys/setup.mcfunction#L1
    #declare function natural_merge_sort:sys/sort                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/NaturalMergeSort/data/natural_merge_sort/functions/sys/sort.mcfunction#L1
    #declare function oh_its_dat:please                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/OhMyDat/data/oh_its_dat/functions/please.mcfunction#L1
    #declare function oh_my_dat:please                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/OhMyDat/data/oh_my_dat/functions/please.mcfunction#L1
    #declare function oh_my_dat:release                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/OhMyDat/data/oh_my_dat/functions/release.mcfunction#L1
    #declare function oh_my_dat:sys/allocate                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/OhMyDat/data/oh_my_dat/functions/sys/allocate.mcfunction#L1
    #declare function oh_my_dat:sys/gc                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/OhMyDat/data/oh_my_dat/functions/sys/gc.mcfunction#L1
    #declare function oh_my_dat:sys/gc_loop                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/OhMyDat/data/oh_my_dat/functions/sys/gc_loop.mcfunction#L1
    #declare function oh_my_dat:sys/init                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/OhMyDat/data/oh_my_dat/functions/sys/init.mcfunction#L1
    #declare function oh_my_dat:sys/load                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/OhMyDat/data/oh_my_dat/functions/sys/load.mcfunction#L1
    #declare function oh_my_dat:sys/provide                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/OhMyDat/data/oh_my_dat/functions/sys/provide.mcfunction#L1
    #declare function score_to_health:anti_glitch/modify                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/ScoreToHealth/data/score_to_health/functions/anti_glitch/modify.mcfunction#L1
    #declare function score_to_health:anti_glitch/protect                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/ScoreToHealth/data/score_to_health/functions/anti_glitch/protect.mcfunction#L1
    #declare function score_to_health:anti_glitch/restore                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/ScoreToHealth/data/score_to_health/functions/anti_glitch/restore.mcfunction#L1
    #declare function score_to_health:anti_glitch/unprotect                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/ScoreToHealth/data/score_to_health/functions/anti_glitch/unprotect.mcfunction#L1
    #declare function score_to_health:check                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/ScoreToHealth/data/score_to_health/functions/check.mcfunction#L1
    #declare function score_to_health:load                                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/ScoreToHealth/data/score_to_health/functions/load.mcfunction#L1
    #declare function score_to_health:modify                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/ScoreToHealth/data/score_to_health/functions/modify.mcfunction#L1
    #declare function score_to_health:modify_max_health                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/ScoreToHealth/data/score_to_health/functions/modify_max_health.mcfunction#L1
    #declare function score_to_health:player_tick                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/ScoreToHealth/data/score_to_health/functions/player_tick.mcfunction#L1
    #declare function score_to_health:restore                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/ScoreToHealth/data/score_to_health/functions/restore.mcfunction#L1
    #declare function world_manager:gimmick/ending_portal/open                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/functions/gimmick/ending_portal/open.mcfunction#L1
    #declare item_modifier lib:break_item                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/item_modifiers/break_item.json#L1
    #declare item_modifier minecraft:identity                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/item_modifiers/identity.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/attack_info              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/attack_info.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/condition                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/condition.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/cooldown                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/cooldown.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/cooldown_duration        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/cooldown_duration.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/cost_item                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/cost_item.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/equipment                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/equipment.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/equipment_description    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/equipment_description.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/god                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/god.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/modifier                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/modifier.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/mp_cost                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/mp_cost.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/mp_heal_when_hit         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/mp_heal_when_hit.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/mp_require               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/mp_require.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/parts_max                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/parts_max.json#L1
    #declare loot_table asset_manager:artifact/generate_lore/trigger                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/generate_lore/trigger.json#L1
    #declare loot_table asset_manager:artifact/get_lore                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/get_lore.json#L1
    #declare loot_table asset_manager:artifact/get_name/                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/get_name/.json#L1
    #declare loot_table asset_manager:artifact/get_name/has_remain                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/loot_tables/artifact/get_name/has_remain.json#L1
    #declare loot_table common:currency/                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/currency/.json#L1
    #declare loot_table common:currency/high                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/currency/high.json#L1
    #declare loot_table common:island_rewards/artifact_seed/lv-1                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/island_rewards/artifact_seed/lv-1.json#L1
    #declare loot_table common:island_rewards/artifact_seed/lv-2                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/island_rewards/artifact_seed/lv-2.json#L1
    #declare loot_table common:island_rewards/artifact_seed/lv-3                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/island_rewards/artifact_seed/lv-3.json#L1
    #declare loot_table common:island_rewards/artifact_seed/lv-4                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/island_rewards/artifact_seed/lv-4.json#L1
    #declare loot_table common:island_rewards/lv-1                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/island_rewards/lv-1.json#L1
    #declare loot_table common:island_rewards/lv-2                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/island_rewards/lv-2.json#L1
    #declare loot_table common:island_rewards/lv-3                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/island_rewards/lv-3.json#L1
    #declare loot_table common:island_rewards/lv-4                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/island_rewards/lv-4.json#L1
    #declare loot_table common:sacred_shard/lv-1                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/sacred_shard/lv-1.json#L1
    #declare loot_table common:sacred_shard/lv-2                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/sacred_shard/lv-2.json#L1
    #declare loot_table common:sacred_shard/lv-3                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/sacred_shard/lv-3.json#L1
    #declare loot_table common:sacred_shard/lv-4                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/sacred_shard/lv-4.json#L1
    #declare loot_table common:supplies/lv-1                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/supplies/lv-1.json#L1
    #declare loot_table common:supplies/lv-2                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/supplies/lv-2.json#L1
    #declare loot_table common:supplies/lv-3                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/supplies/lv-3.json#L1
    #declare loot_table common:supplies/lv-4                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/common/loot_tables/supplies/lv-4.json#L1
    #declare loot_table lib:get_name                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/loot_tables/get_name.json#L1
    #declare loot_table lib:status_log/damage                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/loot_tables/status_log/damage.json#L1
    #declare loot_table lib:status_log/damage_with_icon                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/loot_tables/status_log/damage_with_icon.json#L1
    #declare loot_table lib:status_log/heal                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/loot_tables/status_log/heal.json#L1
    #declare loot_table lib:status_log/mp                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/loot_tables/status_log/mp.json#L1
    #declare loot_table minecraft:blocks/chorus_flower                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/loot_tables/blocks/chorus_flower.json#L1
    #declare loot_table minecraft:blocks/chorus_plant                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/loot_tables/blocks/chorus_plant.json#L1
    #declare loot_table minecraft:blocks/cobblestone                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/loot_tables/blocks/cobblestone.json#L1
    #declare loot_table minecraft:blocks/lime_shulker_box                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/loot_tables/blocks/lime_shulker_box.json#L1
    #declare loot_table minecraft:blocks/stone                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/loot_tables/blocks/stone.json#L1
    #declare loot_table minecraft:empty                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/loot_tables/empty.json#L1
    #declare loot_table player_manager:lost_item/give_all/name_to_textcomponent       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/player_manager/loot_tables/lost_item/give_all/name_to_textcomponent.json#L1
    #declare objective ArrowShotTick                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L356
    #declare objective Const                                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L135
    #declare objective ForwardTargetMobUUID                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L249
    #declare objective Global                                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L127
    #declare objective GraveUserID                                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L362
    #declare objective Lib                                                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L248
    #declare objective MobHealth                                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L177
    #declare objective MobID                                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L176
    #declare objective MobUUID                                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L141
    #declare objective ObjectID                                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L187
    #declare objective Temporary                                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L123
    #declare objective UserID                                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L140
    #declare predicate api:area/is_breakable                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/predicates/area/is_breakable.json#L1
    #declare predicate api:global_vars/difficulty/easy                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/predicates/global_vars/difficulty/easy.json#L1
    #declare predicate api:global_vars/difficulty/hard                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/predicates/global_vars/difficulty/hard.json#L1
    #declare predicate api:global_vars/difficulty/max/hard                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/predicates/global_vars/difficulty/max/hard.json#L1
    #declare predicate api:global_vars/difficulty/max/normal                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/predicates/global_vars/difficulty/max/normal.json#L1
    #declare predicate api:global_vars/difficulty/min/hard                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/predicates/global_vars/difficulty/min/hard.json#L1
    #declare predicate api:global_vars/difficulty/min/normal                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/predicates/global_vars/difficulty/min/normal.json#L1
    #declare predicate api:global_vars/difficulty/min/over_difficulty                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/predicates/global_vars/difficulty/min/over_difficulty.json#L1
    #declare predicate api:global_vars/difficulty/normal                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/predicates/global_vars/difficulty/normal.json#L1
    #declare predicate api:mob/has_forward_target                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/predicates/mob/has_forward_target.json#L1
    #declare predicate asset_manager:has_consumable_item/mainhand                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/predicates/has_consumable_item/mainhand.json#L1
    #declare predicate asset_manager:has_consumable_item/offhand                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/predicates/has_consumable_item/offhand.json#L1
    #declare predicate asset_manager:is_use_mainhand/bow                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/predicates/is_use_mainhand/bow.json#L1
    #declare predicate asset_manager:is_use_mainhand/carrot_on_a_stick                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/predicates/is_use_mainhand/carrot_on_a_stick.json#L1
    #declare predicate lib:dimension/is_end                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/dimension/is_end.json#L1
    #declare predicate lib:dimension/is_nether                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/dimension/is_nether.json#L1
    #declare predicate lib:dimension/is_overworld                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/dimension/is_overworld.json#L1
    #declare predicate lib:has_health_modify_score                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/has_health_modify_score.json#L1
    #declare predicate lib:in_battle                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/in_battle.json#L1
    #declare predicate lib:in_lava/                                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/in_lava/.json#L1
    #declare predicate lib:in_lava/include_flowing                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/in_lava/include_flowing.json#L1
    #declare predicate lib:in_water/                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/in_water/.json#L1
    #declare predicate lib:in_water/include_flowing                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/in_water/include_flowing.json#L1
    #declare predicate lib:is_baby                                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_baby.json#L1
    #declare predicate lib:is_ban_tp_area                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_ban_tp_area.json#L1
    #declare predicate lib:is_burning                                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_burning.json#L1
    #declare predicate lib:is_day                                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_day.json#L1
    #declare predicate lib:is_deep_void                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_deep_void.json#L1
    #declare predicate lib:is_flying_elytra                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_flying_elytra.json#L1
    #declare predicate lib:is_in_lava/                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_in_lava/.json#L1
    #declare predicate lib:is_in_lava/include_flowing                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_in_lava/include_flowing.json#L1
    #declare predicate lib:is_in_water/                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_in_water/.json#L1
    #declare predicate lib:is_in_water/include_flowing                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_in_water/include_flowing.json#L1
    #declare predicate lib:is_night                                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_night.json#L1
    #declare predicate lib:is_passenger                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_passenger.json#L1
    #declare predicate lib:is_placeable_vehicle                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_placeable_vehicle.json#L1
    #declare predicate lib:is_player_moving                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_player_moving.json#L1
    #declare predicate lib:is_sneaking                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_sneaking.json#L1
    #declare predicate lib:is_sprinting                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_sprinting.json#L1
    #declare predicate lib:is_swimming                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_swimming.json#L1
    #declare predicate lib:is_vehicle                                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_vehicle.json#L1
    #declare predicate lib:is_void                                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/is_void.json#L1
    #declare predicate lib:light_level/0                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/0.json#L1
    #declare predicate lib:light_level/1                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/1.json#L1
    #declare predicate lib:light_level/10                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/10.json#L1
    #declare predicate lib:light_level/11                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/11.json#L1
    #declare predicate lib:light_level/12                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/12.json#L1
    #declare predicate lib:light_level/13                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/13.json#L1
    #declare predicate lib:light_level/14                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/14.json#L1
    #declare predicate lib:light_level/15                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/15.json#L1
    #declare predicate lib:light_level/2                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/2.json#L1
    #declare predicate lib:light_level/3                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/3.json#L1
    #declare predicate lib:light_level/4                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/4.json#L1
    #declare predicate lib:light_level/5                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/5.json#L1
    #declare predicate lib:light_level/6                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/6.json#L1
    #declare predicate lib:light_level/7                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/7.json#L1
    #declare predicate lib:light_level/8                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/8.json#L1
    #declare predicate lib:light_level/9                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/9.json#L1
    #declare predicate lib:light_level/max/0                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/0.json#L1
    #declare predicate lib:light_level/max/1                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/1.json#L1
    #declare predicate lib:light_level/max/10                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/10.json#L1
    #declare predicate lib:light_level/max/11                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/11.json#L1
    #declare predicate lib:light_level/max/12                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/12.json#L1
    #declare predicate lib:light_level/max/13                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/13.json#L1
    #declare predicate lib:light_level/max/14                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/14.json#L1
    #declare predicate lib:light_level/max/15                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/15.json#L1
    #declare predicate lib:light_level/max/2                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/2.json#L1
    #declare predicate lib:light_level/max/3                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/3.json#L1
    #declare predicate lib:light_level/max/4                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/4.json#L1
    #declare predicate lib:light_level/max/5                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/5.json#L1
    #declare predicate lib:light_level/max/6                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/6.json#L1
    #declare predicate lib:light_level/max/7                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/7.json#L1
    #declare predicate lib:light_level/max/8                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/8.json#L1
    #declare predicate lib:light_level/max/9                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/max/9.json#L1
    #declare predicate lib:light_level/min/0                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/0.json#L1
    #declare predicate lib:light_level/min/1                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/1.json#L1
    #declare predicate lib:light_level/min/10                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/10.json#L1
    #declare predicate lib:light_level/min/11                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/11.json#L1
    #declare predicate lib:light_level/min/12                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/12.json#L1
    #declare predicate lib:light_level/min/13                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/13.json#L1
    #declare predicate lib:light_level/min/14                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/14.json#L1
    #declare predicate lib:light_level/min/15                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/15.json#L1
    #declare predicate lib:light_level/min/2                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/2.json#L1
    #declare predicate lib:light_level/min/3                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/3.json#L1
    #declare predicate lib:light_level/min/4                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/4.json#L1
    #declare predicate lib:light_level/min/5                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/5.json#L1
    #declare predicate lib:light_level/min/6                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/6.json#L1
    #declare predicate lib:light_level/min/7                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/7.json#L1
    #declare predicate lib:light_level/min/8                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/8.json#L1
    #declare predicate lib:light_level/min/9                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/light_level/min/9.json#L1
    #declare predicate lib:pos/is_x_positive                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/pos/is_x_positive.json#L1
    #declare predicate lib:pos/is_y_positive                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/pos/is_y_positive.json#L1
    #declare predicate lib:pos/is_z_positive                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/pos/is_z_positive.json#L1
    #declare predicate lib:random_pass_per/1                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/1.json#L1
    #declare predicate lib:random_pass_per/10                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/10.json#L1
    #declare predicate lib:random_pass_per/11                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/11.json#L1
    #declare predicate lib:random_pass_per/12                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/12.json#L1
    #declare predicate lib:random_pass_per/13                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/13.json#L1
    #declare predicate lib:random_pass_per/14                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/14.json#L1
    #declare predicate lib:random_pass_per/15                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/15.json#L1
    #declare predicate lib:random_pass_per/16                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/16.json#L1
    #declare predicate lib:random_pass_per/17                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/17.json#L1
    #declare predicate lib:random_pass_per/18                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/18.json#L1
    #declare predicate lib:random_pass_per/19                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/19.json#L1
    #declare predicate lib:random_pass_per/2                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/2.json#L1
    #declare predicate lib:random_pass_per/20                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/20.json#L1
    #declare predicate lib:random_pass_per/21                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/21.json#L1
    #declare predicate lib:random_pass_per/22                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/22.json#L1
    #declare predicate lib:random_pass_per/23                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/23.json#L1
    #declare predicate lib:random_pass_per/24                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/24.json#L1
    #declare predicate lib:random_pass_per/25                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/25.json#L1
    #declare predicate lib:random_pass_per/26                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/26.json#L1
    #declare predicate lib:random_pass_per/27                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/27.json#L1
    #declare predicate lib:random_pass_per/28                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/28.json#L1
    #declare predicate lib:random_pass_per/29                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/29.json#L1
    #declare predicate lib:random_pass_per/3                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/3.json#L1
    #declare predicate lib:random_pass_per/30                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/30.json#L1
    #declare predicate lib:random_pass_per/31                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/31.json#L1
    #declare predicate lib:random_pass_per/32                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/32.json#L1
    #declare predicate lib:random_pass_per/33                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/33.json#L1
    #declare predicate lib:random_pass_per/34                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/34.json#L1
    #declare predicate lib:random_pass_per/35                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/35.json#L1
    #declare predicate lib:random_pass_per/36                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/36.json#L1
    #declare predicate lib:random_pass_per/37                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/37.json#L1
    #declare predicate lib:random_pass_per/38                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/38.json#L1
    #declare predicate lib:random_pass_per/39                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/39.json#L1
    #declare predicate lib:random_pass_per/4                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/4.json#L1
    #declare predicate lib:random_pass_per/40                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/40.json#L1
    #declare predicate lib:random_pass_per/41                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/41.json#L1
    #declare predicate lib:random_pass_per/42                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/42.json#L1
    #declare predicate lib:random_pass_per/43                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/43.json#L1
    #declare predicate lib:random_pass_per/44                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/44.json#L1
    #declare predicate lib:random_pass_per/45                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/45.json#L1
    #declare predicate lib:random_pass_per/46                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/46.json#L1
    #declare predicate lib:random_pass_per/47                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/47.json#L1
    #declare predicate lib:random_pass_per/48                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/48.json#L1
    #declare predicate lib:random_pass_per/49                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/49.json#L1
    #declare predicate lib:random_pass_per/5                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/5.json#L1
    #declare predicate lib:random_pass_per/50                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/50.json#L1
    #declare predicate lib:random_pass_per/51                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/51.json#L1
    #declare predicate lib:random_pass_per/52                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/52.json#L1
    #declare predicate lib:random_pass_per/53                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/53.json#L1
    #declare predicate lib:random_pass_per/54                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/54.json#L1
    #declare predicate lib:random_pass_per/55                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/55.json#L1
    #declare predicate lib:random_pass_per/56                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/56.json#L1
    #declare predicate lib:random_pass_per/57                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/57.json#L1
    #declare predicate lib:random_pass_per/58                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/58.json#L1
    #declare predicate lib:random_pass_per/59                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/59.json#L1
    #declare predicate lib:random_pass_per/6                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/6.json#L1
    #declare predicate lib:random_pass_per/60                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/60.json#L1
    #declare predicate lib:random_pass_per/61                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/61.json#L1
    #declare predicate lib:random_pass_per/62                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/62.json#L1
    #declare predicate lib:random_pass_per/63                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/63.json#L1
    #declare predicate lib:random_pass_per/64                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/64.json#L1
    #declare predicate lib:random_pass_per/65                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/65.json#L1
    #declare predicate lib:random_pass_per/66                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/66.json#L1
    #declare predicate lib:random_pass_per/67                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/67.json#L1
    #declare predicate lib:random_pass_per/68                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/68.json#L1
    #declare predicate lib:random_pass_per/69                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/69.json#L1
    #declare predicate lib:random_pass_per/7                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/7.json#L1
    #declare predicate lib:random_pass_per/70                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/70.json#L1
    #declare predicate lib:random_pass_per/71                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/71.json#L1
    #declare predicate lib:random_pass_per/72                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/72.json#L1
    #declare predicate lib:random_pass_per/73                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/73.json#L1
    #declare predicate lib:random_pass_per/74                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/74.json#L1
    #declare predicate lib:random_pass_per/75                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/75.json#L1
    #declare predicate lib:random_pass_per/76                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/76.json#L1
    #declare predicate lib:random_pass_per/77                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/77.json#L1
    #declare predicate lib:random_pass_per/78                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/78.json#L1
    #declare predicate lib:random_pass_per/79                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/79.json#L1
    #declare predicate lib:random_pass_per/8                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/8.json#L1
    #declare predicate lib:random_pass_per/80                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/80.json#L1
    #declare predicate lib:random_pass_per/81                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/81.json#L1
    #declare predicate lib:random_pass_per/82                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/82.json#L1
    #declare predicate lib:random_pass_per/83                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/83.json#L1
    #declare predicate lib:random_pass_per/84                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/84.json#L1
    #declare predicate lib:random_pass_per/85                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/85.json#L1
    #declare predicate lib:random_pass_per/86                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/86.json#L1
    #declare predicate lib:random_pass_per/87                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/87.json#L1
    #declare predicate lib:random_pass_per/88                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/88.json#L1
    #declare predicate lib:random_pass_per/89                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/89.json#L1
    #declare predicate lib:random_pass_per/9                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/9.json#L1
    #declare predicate lib:random_pass_per/90                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/90.json#L1
    #declare predicate lib:random_pass_per/91                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/91.json#L1
    #declare predicate lib:random_pass_per/92                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/92.json#L1
    #declare predicate lib:random_pass_per/93                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/93.json#L1
    #declare predicate lib:random_pass_per/94                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/94.json#L1
    #declare predicate lib:random_pass_per/95                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/95.json#L1
    #declare predicate lib:random_pass_per/96                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/96.json#L1
    #declare predicate lib:random_pass_per/97                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/97.json#L1
    #declare predicate lib:random_pass_per/98                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/98.json#L1
    #declare predicate lib:random_pass_per/99                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/random_pass_per/99.json#L1
    #declare predicate lib:weather/is_raining                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/weather/is_raining.json#L1
    #declare predicate lib:weather/is_sunny                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/weather/is_sunny.json#L1
    #declare predicate lib:weather/is_thundering                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/predicates/weather/is_thundering.json#L1
    #declare predicate player_manager:is_believe/flora                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/player_manager/predicates/is_believe/flora.json#L1
    #declare predicate player_manager:is_believe/null                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/player_manager/predicates/is_believe/null.json#L1
    #declare predicate player_manager:is_believe/nyaptov                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/player_manager/predicates/is_believe/nyaptov.json#L1
    #declare predicate player_manager:is_believe/rumor                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/player_manager/predicates/is_believe/rumor.json#L1
    #declare predicate player_manager:is_believe/urban                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/player_manager/predicates/is_believe/urban.json#L1
    #declare predicate player_manager:is_believe/wi-ki                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/player_manager/predicates/is_believe/wi-ki.json#L1
    #declare predicate world_manager:area/00-01.tutorial-mission                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/00-01.tutorial-mission.json#L1
    #declare predicate world_manager:area/00-02.tutorial-curse                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/00-02.tutorial-curse.json#L1
    #declare predicate world_manager:area/00-03.tutorial-artifact                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/00-03.tutorial-artifact.json#L1
    #declare predicate world_manager:area/00-04.tutorial-gods                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/00-04.tutorial-gods.json#L1
    #declare predicate world_manager:area/00-05.tutorial-spawner                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/00-05.tutorial-spawner.json#L1
    #declare predicate world_manager:area/00-06.tutorial-tomb                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/00-06.tutorial-tomb.json#L1
    #declare predicate world_manager:area/00-07.tutorial-lost_items                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/00-07.tutorial-lost_items.json#L1
    #declare predicate world_manager:area/00-08.tutorial-tp_gate                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/00-08.tutorial-tp_gate.json#L1
    #declare predicate world_manager:area/00-30.tutorial-lower                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/00-30.tutorial-lower.json#L1
    #declare predicate world_manager:area/00.tutorial                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/00.tutorial.json#L1
    #declare predicate world_manager:area/01-01.flora_temple                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/01-01.flora_temple.json#L1
    #declare predicate world_manager:area/01-02.nyaptov_temple                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/01-02.nyaptov_temple.json#L1
    #declare predicate world_manager:area/01-03.rumor_temple                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/01-03.rumor_temple.json#L1
    #declare predicate world_manager:area/01-04.urban_temple                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/01-04.urban_temple.json#L1
    #declare predicate world_manager:area/01-05.wi-ki_temple                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/01-05.wi-ki_temple.json#L1
    #declare predicate world_manager:area/01-30.gate_island-lower                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/01-30.gate_island-lower.json#L1
    #declare predicate world_manager:area/01.god_boundaries                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/01.god_boundaries.json#L1
    #declare predicate world_manager:area/02-01.traders_island                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/02-01.traders_island.json#L1
    #declare predicate world_manager:area/02.islands                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/02.islands.json#L1
    #declare predicate world_manager:area/03.arena                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/03.arena.json#L1
    #declare predicate world_manager:area/10.nether                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/10.nether.json#L1
    #declare predicate world_manager:area/20-01.end_mansion_void                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/20-01.end_mansion_void.json#L1
    #declare predicate world_manager:area/20-02.end_forgotten_star_lower              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/20-02.end_forgotten_star_lower.json#L1
    #declare predicate world_manager:area/20-03.end_forgotten_star_higher             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/20-03.end_forgotten_star_higher.json#L1
    #declare predicate world_manager:area/20.end                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/area/20.end.json#L1
    #declare predicate world_manager:gimmick/darkness/in_darkness                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/gimmick/darkness/in_darkness.json#L1
    #declare predicate world_manager:gimmick/darkness/in_valid_spot                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/predicates/gimmick/darkness/in_valid_spot.json#L1
    #declare recipe minecraft:enchanting_table                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/recipes/enchanting_table.json#L1
    #declare recipe minecraft:repair_item                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/recipes/repair_item.json#L1
    #declare score_holder $LoadTime                                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/_index.d.mcfunction#L7
    #declare score_holder $PlayerCount                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/_index.d.mcfunction#L6
    #declare storage api:                                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/api/functions/_index.d.mcfunction#L6
    #declare storage lib:                                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/_index.d.mcfunction#L6
    #declare storage metric:                                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/metric/functions/_index.d.mcfunction#L6
    #declare storage minecraft:global                                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L56
    #declare tag BetaEndingPortal                                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/world_manager/functions/gimmick/ending_portal/_index.d.mcfunction#L7
    #declare tag BoundingFan                                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/bounding_fan/.mcfunction#L25
    #declare tag Death                                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/_index.d.mcfunction#L35
    #declare tag DevPrivilege                                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L55
    #declare tag DXYZ                                                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/functions/rotatable_dxyz/m.mcfunction#L26
    #declare tag Enemy                                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L7
    #declare tag Enemy.Boss                                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L8
    #declare tag Enemy.EndGameBoss                                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L9
    #declare tag ExtendedCollision                                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L15
    #declare tag FallDamageImmunity                                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/player_manager/functions/fall_damage/_index.d.mcfunction#L14
    #declare tag Friend                                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L6
    #declare tag Immovable                                                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L14
    #declare tag Npc                                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L11
    #declare tag Object                                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L12
    #declare tag PlayerShouldInvulnerable                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/player_manager/functions/manage_tag/_index.d.mcfunction#L6
    #declare tag Projectile                                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L10
    #declare tag Uninterferable                                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/_index.d.mcfunction#L13
    #declare tag/block lib:air                                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/blocks/air.json#L1
    #declare tag/block lib:chests                                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/blocks/chests.json#L1
    #declare tag/block lib:command_blocks                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/blocks/command_blocks.json#L1
    #declare tag/block lib:containers                                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/blocks/containers.json#L1
    #declare tag/block lib:dirts                                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/blocks/dirts.json#L1
    #declare tag/block lib:glass_panes                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/blocks/glass_panes.json#L1
    #declare tag/block lib:glasses                                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/blocks/glasses.json#L1
    #declare tag/block lib:has_inventory                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/blocks/has_inventory.json#L1
    #declare tag/block lib:no_collision                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/blocks/no_collision.json#L1
    #declare tag/block lib:no_collision_without_fluid                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/blocks/no_collision_without_fluid.json#L1
    #declare tag/block lib:ores                                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/blocks/ores.json#L1
    #declare tag/block lib:torches                                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/blocks/torches.json#L1
    #declare tag/block lib:unbreakable                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/blocks/unbreakable.json#L1
    #declare tag/block minecraft:enderman_holdable                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/tags/blocks/enderman_holdable.json#L1
    #declare tag/damage_type minecraft:bypasses_cooldown                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/tags/damage_type/bypasses_cooldown.json#L1
    #declare tag/damage_type minecraft:is_melee                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/tags/damage_type/is_melee.json#L1
    #declare tag/damage_type minecraft:is_projectile                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/tags/damage_type/is_projectile.json#L1
    #declare tag/entity_type lib:display                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/entity_types/display.json#L1
    #declare tag/entity_type lib:drownable                                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/entity_types/drownable.json#L1
    #declare tag/entity_type lib:hostile                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/entity_types/hostile.json#L1
    #declare tag/entity_type lib:living                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/entity_types/living.json#L1
    #declare tag/entity_type lib:neutral                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/entity_types/neutral.json#L1
    #declare tag/entity_type lib:neutral_enemy                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/entity_types/neutral_enemy.json#L1
    #declare tag/entity_type lib:neutral_friend                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/entity_types/neutral_friend.json#L1
    #declare tag/entity_type lib:passive                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/entity_types/passive.json#L1
    #declare tag/entity_type lib:placeable_vehicles                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/entity_types/placeable_vehicles.json#L1
    #declare tag/entity_type lib:undead                                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/entity_types/undead.json#L1
    #declare tag/function asset:artifact/attack                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/attack.json#L1
    #declare tag/function asset:artifact/attack/explosion                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/attack/explosion.json#L1
    #declare tag/function asset:artifact/attack/melee                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/attack/melee.json#L1
    #declare tag/function asset:artifact/attack/projectile                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/attack/projectile.json#L1
    #declare tag/function asset:artifact/click.carrot_on_a_stick                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/click.carrot_on_a_stick.json#L1
    #declare tag/function asset:artifact/damage                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage.json#L1
    #declare tag/function asset:artifact/damage/drowning                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage/drowning.json#L1
    #declare tag/function asset:artifact/damage/explosion                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage/explosion.json#L1
    #declare tag/function asset:artifact/damage/fire                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage/fire.json#L1
    #declare tag/function asset:artifact/damage/freezing                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage/freezing.json#L1
    #declare tag/function asset:artifact/damage/from_entity/                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage/from_entity/.json#L1
    #declare tag/function asset:artifact/damage/from_entity/blocked                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage/from_entity/blocked.json#L1
    #declare tag/function asset:artifact/damage/from_entity/explosion                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage/from_entity/explosion.json#L1
    #declare tag/function asset:artifact/damage/from_entity/melee                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage/from_entity/melee.json#L1
    #declare tag/function asset:artifact/damage/from_entity/projectile                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage/from_entity/projectile.json#L1
    #declare tag/function asset:artifact/damage/lightning                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage/lightning.json#L1
    #declare tag/function asset:artifact/damage/melee                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage/melee.json#L1
    #declare tag/function asset:artifact/damage/other                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage/other.json#L1
    #declare tag/function asset:artifact/damage/projectile                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/damage/projectile.json#L1
    #declare tag/function asset:artifact/dis_equip                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/dis_equip.json#L1
    #declare tag/function asset:artifact/equip                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/equip.json#L1
    #declare tag/function asset:artifact/give                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/give.json#L1
    #declare tag/function asset:artifact/heal                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/heal.json#L1
    #declare tag/function asset:artifact/killed                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/killed.json#L1
    #declare tag/function asset:artifact/killed/explosion                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/killed/explosion.json#L1
    #declare tag/function asset:artifact/killed/melee                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/killed/melee.json#L1
    #declare tag/function asset:artifact/killed/projectile                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/killed/projectile.json#L1
    #declare tag/function asset:artifact/load                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/load.json#L1
    #declare tag/function asset:artifact/receive_heal                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/receive_heal.json#L1
    #declare tag/function asset:artifact/register                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/register.json#L1
    #declare tag/function asset:artifact/shot                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/shot.json#L1
    #declare tag/function asset:artifact/sneak/                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/.json#L1
    #declare tag/function asset:artifact/sneak/10s                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/10s.json#L1
    #declare tag/function asset:artifact/sneak/1s                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/1s.json#L1
    #declare tag/function asset:artifact/sneak/2s                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/2s.json#L1
    #declare tag/function asset:artifact/sneak/3s                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/3s.json#L1
    #declare tag/function asset:artifact/sneak/4s                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/4s.json#L1
    #declare tag/function asset:artifact/sneak/5s                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/5s.json#L1
    #declare tag/function asset:artifact/sneak/keep/                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/keep/.json#L1
    #declare tag/function asset:artifact/sneak/keep/10s                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/keep/10s.json#L1
    #declare tag/function asset:artifact/sneak/keep/1s                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/keep/1s.json#L1
    #declare tag/function asset:artifact/sneak/keep/2s                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/keep/2s.json#L1
    #declare tag/function asset:artifact/sneak/keep/3s                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/keep/3s.json#L1
    #declare tag/function asset:artifact/sneak/keep/4s                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/keep/4s.json#L1
    #declare tag/function asset:artifact/sneak/keep/5s                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/sneak/keep/5s.json#L1
    #declare tag/function asset:artifact/tick                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/tick.json#L1
    #declare tag/function asset:artifact/use_item                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/use_item.json#L1
    #declare tag/function asset:artifact/using_item                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/artifact/using_item.json#L1
    #declare tag/function asset:effect/end                                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/effect/end.json#L1
    #declare tag/function asset:effect/given                                          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/effect/given.json#L1
    #declare tag/function asset:effect/load                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/effect/load.json#L1
    #declare tag/function asset:effect/re-given                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/effect/re-given.json#L1
    #declare tag/function asset:effect/register                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/effect/register.json#L1
    #declare tag/function asset:effect/remove                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/effect/remove.json#L1
    #declare tag/function asset:effect/tick                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/effect/tick.json#L1
    #declare tag/function asset:mob/enroll_pool                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/mob/enroll_pool.json#L1
    #declare tag/function asset:mob/load                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/mob/load.json#L1
    #declare tag/function asset:nexus_loader/register                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/nexus_loader/register.json#L1
    #declare tag/function asset:object/load                                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/object/load.json#L1
    #declare tag/function asset:rejoin                                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/tags/functions/rejoin.json#L1
    # from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/ScoreToHealth/data/minecraft/tags/functions/load.json#L1
    # from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/OhMyDat/data/minecraft/tags/functions/load.json#L1
    # from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/tags/functions/load.json#L1
    #declare tag/function minecraft:load
    #declare tag/function minecraft:tick                                              from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/tags/functions/tick.json#L1
    #declare tag/item lib:all                                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/all.json#L1
    #declare tag/item lib:consumable                                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/consumable.json#L1
    #declare tag/item lib:edible                                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/edible.json#L1
    #declare tag/item lib:has_bypass_fullstomach_consumable                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_bypass_fullstomach_consumable.json#L1
    #declare tag/item lib:has_durability/                                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/.json#L1
    #declare tag/item lib:has_durability/armor/                                       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/armor/.json#L1
    #declare tag/item lib:has_durability/armor/boots                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/armor/boots.json#L1
    #declare tag/item lib:has_durability/armor/chestplates                            from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/armor/chestplates.json#L1
    #declare tag/item lib:has_durability/armor/helmets                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/armor/helmets.json#L1
    #declare tag/item lib:has_durability/armor/leggings                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/armor/leggings.json#L1
    #declare tag/item lib:has_durability/material/chainmail                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/material/chainmail.json#L1
    #declare tag/item lib:has_durability/material/diamond                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/material/diamond.json#L1
    #declare tag/item lib:has_durability/material/gold                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/material/gold.json#L1
    #declare tag/item lib:has_durability/material/iron                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/material/iron.json#L1
    #declare tag/item lib:has_durability/material/leather                             from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/material/leather.json#L1
    #declare tag/item lib:has_durability/material/netherite                           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/material/netherite.json#L1
    #declare tag/item lib:has_durability/material/stone                               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/material/stone.json#L1
    #declare tag/item lib:has_durability/material/wood                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/material/wood.json#L1
    #declare tag/item lib:has_durability/tool/                                        from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/tool/.json#L1
    #declare tag/item lib:has_durability/tool/axes                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/tool/axes.json#L1
    #declare tag/item lib:has_durability/tool/hoes                                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/tool/hoes.json#L1
    #declare tag/item lib:has_durability/tool/pickaxes                                from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/tool/pickaxes.json#L1
    #declare tag/item lib:has_durability/tool/shovels                                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/tool/shovels.json#L1
    #declare tag/item lib:has_durability/tool/swords                                  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/has_durability/tool/swords.json#L1
    #declare tag/item lib:pickaxes/level-1-mineable                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/pickaxes/level-1-mineable.json#L1
    #declare tag/item lib:pickaxes/level-2-mineable                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/pickaxes/level-2-mineable.json#L1
    #declare tag/item lib:pickaxes/level-3-mineable                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/pickaxes/level-3-mineable.json#L1
    #declare tag/item lib:pickaxes/level-4-mineable                                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/pickaxes/level-4-mineable.json#L1
    #declare tag/item lib:potions                                                     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/potions.json#L1
    #declare tag/item lib:usable                                                      from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/lib/tags/items/usable.json#L1
    #declare team NoCollision                                                         from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L115

#> declare
# @within function asset:effect/*/re-given/
#declare function asset:effect/super.re-given from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/effect/super.re-given.mcfunction#L1

#> declare
# @within function asset:effect/*/given/
#declare function asset:effect/super.given from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/effect/super.given.mcfunction#L1

#> declare
# @within function asset:mob/*/death/
#declare function asset:mob/super.death from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/mob/super.death.mcfunction#L1

#> declare
# @within function asset:effect/*/register
#declare function asset:effect/extends from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/effect/extends.mcfunction#L1

#> declare
# @within function asset:object/*/tick/
#declare function asset:object/super.tick from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/object/super.tick.mcfunction#L1

#> declare
# @within function asset:mob/*/init/
#declare function asset:mob/super.init from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/mob/super.init.mcfunction#L1

#> declare
# @within function asset:object/*/**
    #declare function asset:object/call.m       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/object/call.m.mcfunction#L1
    #declare function asset:object/super.method from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/object/super.method.mcfunction#L1

#> declare
# @within function asset:mob/*/**
    #declare function asset:mob/call.m       from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/mob/call.m.mcfunction#L1
    #declare function asset:mob/super.method from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/mob/super.method.mcfunction#L1

#> declare
# @within function asset:effect/*/tick/
#declare function asset:effect/super.tick from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/effect/super.tick.mcfunction#L1

#> declare
# @within function asset:object/*/register
#declare function asset:object/extends from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/object/extends.mcfunction#L1

#> declare
# @within function asset:mob/*/register
#declare function asset:mob/extends from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/mob/extends.mcfunction#L1

#> declare
# @within function asset:effect/*/end/
#declare function asset:effect/super.end from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/effect/super.end.mcfunction#L1

#> declare
# @within function asset:mob/*/tick/
#declare function asset:mob/super.tick from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/mob/super.tick.mcfunction#L1

#> declare
# @within function asset:mob/*/hurt/
#declare function asset:mob/super.hurt from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/mob/super.hurt.mcfunction#L1

#> declare
# @within function asset:effect/*/remove/
#declare function asset:effect/super.remove from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/effect/super.remove.mcfunction#L1

#> declare
# @within function asset:mob/*/remove/
#declare function asset:mob/super.remove from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/mob/super.remove.mcfunction#L1

#> declare
# @within function asset:mob/*/attack/
#declare function asset:mob/super.attack from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/mob/super.attack.mcfunction#L1

#> declare
# @within function asset:object/*/init/
#declare function asset:object/super.init from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/object/super.init.mcfunction#L1

#> declare
# @within function asset:artifact/*/*/3.main
    #declare function asset:artifact/common/use/auto     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/use/auto.mcfunction#L1
    #declare function asset:artifact/common/use/chest    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/use/chest.mcfunction#L1
    #declare function asset:artifact/common/use/feet     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/use/feet.mcfunction#L1
    #declare function asset:artifact/common/use/head     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/use/head.mcfunction#L1
    #declare function asset:artifact/common/use/hotbar   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/use/hotbar.mcfunction#L1
    #declare function asset:artifact/common/use/legs     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/use/legs.mcfunction#L1
    #declare function asset:artifact/common/use/mainhand from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/use/mainhand.mcfunction#L1
    #declare function asset:artifact/common/use/offhand  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/use/offhand.mcfunction#L1

#> declare
# @within function asset:artifact/*/*/2.check_condition
    #declare function asset:artifact/common/check_condition/auto     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/auto.mcfunction#L1
    #declare function asset:artifact/common/check_condition/chest    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/chest.mcfunction#L1
    #declare function asset:artifact/common/check_condition/feet     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/feet.mcfunction#L1
    #declare function asset:artifact/common/check_condition/head     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/head.mcfunction#L1
    #declare function asset:artifact/common/check_condition/hotbar   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/hotbar.mcfunction#L1
    #declare function asset:artifact/common/check_condition/legs     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/legs.mcfunction#L1
    #declare function asset:artifact/common/check_condition/mainhand from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/mainhand.mcfunction#L1
    #declare function asset:artifact/common/check_condition/offhand  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/check_condition/offhand.mcfunction#L1

#> declare
# @within function asset:artifact/*/give/2.give
#declare function asset:artifact/common/give from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/give.mcfunction#L1

#> declare
# @within
#   function asset_manager:**
#   function asset:*/*/**
#   function asset:*/extends
#   function asset:*/super.*
#   function api:**
#   function asset:*/call.m
#declare storage asset:context from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/_index.d.mcfunction#L12

#> declare
# @within
#   api:artifact/core/**
#   asset:artifact/*/register
#   asset:artifact/*/give/2.give
#   asset:artifact/*/*/2.check_condition
#   asset:artifact/*/*/3.main
#   asset:artifact/common/**
#   asset_manager:artifact/**
#declare storage asset:artifact from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L13

#> declare
# @within
#   asset_manager:trader/**
#   asset:trader/*/register
#declare storage asset:trader from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/trader/_index.d.mcfunction#L20

#> declare
# @within
#   asset:spawner/*/*
#   asset_manager:spawner/**
#declare storage asset:spawner from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/spawner/_index.d.mcfunction#L8

#> declare
# @within
#   function api:entity/mob/effect/**
#   function asset:effect/extends
#   function asset:effect/super.*
#   function asset:effect/*/register
#   function asset:effect/*/*/
#   function asset_manager:effect/**
#   function asset_manager:artifact/create/set_lore/equipment/*
#   loot_table asset_manager:artifact/generate_lore/equipment_description
#declare storage asset:effect from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/effect/_index.d.mcfunction#L16

#> declare
# @within
#   function oh_*:**
#   function lib:**
#   function api:**
#   function debug:**
#   function core:**
#   function asset:**
#   function asset_manager:**
#   function mob_manager:**
#   function metric:**
#   function player_manager:**
#   function world_manager:**
    #declare objective OhMyDatID from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/OhMyDat/data/oh_my_dat/functions/sys/init.mcfunction#L32
    #declare storage oh_my_dat:  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/OhMyDat/data/oh_my_dat/functions/sys/init.mcfunction#L31

#> declare
# @within
#   api:mob/core/**
#   asset:mob/*/register
#   asset:mob/*/*/
#   asset:mob/**
#   asset:mob/extends
#   asset:mob/super.*
#   asset_manager:mob/**
#   asset:mob/*/summon/2.summon
#   asset:mob/common/**
#   world_manager:gimmick/darkness/penalty/**
#declare storage asset:mob from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L16

#> declare
# @within
#   asset_manager:object/**
#   asset:object/**
#   api:object/**
#declare storage asset:object from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/object/_index.d.mcfunction#L9

#> declare
# @within
#   function minecraft:tests/summon_teleporters/reset
#   function minecraft:tests/summon_teleporters/
#   api:teleporter/unsafe/**
#   asset:teleporter/*/*
#   asset:teleporter/common/register
#   asset_manager:teleporter/**
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/functions/tests/summon_teleporters/reset.mcfunction#L10
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/minecraft/functions/tests/summon_teleporters/.mcfunction#L56
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/teleporter/_index.d.mcfunction#L10
#declare storage asset:teleporter

#> declare
# @within
#   function asset:container/**
#   function asset_manager:container/**
#declare storage asset:container from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/container/_index.d.mcfunction#L9

#> declare
# @within
#   asset:island/*/register
#   asset:island/common/register
#   asset_manager:island/**
#declare storage asset:island from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/island/_index.d.mcfunction#L9

#> declare
# @within asset:**
#declare storage asset:temp from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/_index.d.mcfunction#L6

#> declare
# @within
#   function asset:**
#   function asset_manager:**
#declare storage asset:datapack from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/datapack/_index.d.mcfunction#L8

#> declare
# @within
#   asset_manager:spawner/tick/*
#   function asset_manager:object/triggers/tick
#   function asset:object/**
#   function asset_manager:island/dispel/boss/*
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/death/
#   asset:mob/**
#   core:tick/player/post
#   player_manager:grave/build/*
#   function mob_manager:processing_tag/common_tag/anti_void_action/**
#   core:tick/player/
#   player_manager:vanilla_attack
#   asset_manager:artifact/triggers/**
#   asset:artifact/**
#   asset_manager:teleporter/tick/**
#   core:handler/attack
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/spawner/_index.d.mcfunction#L27
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/object/_index.d.mcfunction#L35
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/island/dispel/boss/_index.d.mcfunction#L6
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L38
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/tick/player/post.mcfunction#L11
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/processing_tag/common_tag/anti_void_action/.mcfunction#L13
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/tick/player/.mcfunction#L15
#declare tag this

#> declare
# @within
#   asset_manager:mob/triggers/hurt/foreach
#   asset:mob/*/hurt/**
#   asset_manager:artifact/triggers/**
#   asset:artifact/**
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L59
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L57
#declare tag Attacker

#> declare
# @within
#   asset_manager:mob/triggers/attack/add_tag_each_victim
#   asset_manager:mob/triggers/attack/foreach
#   asset:mob/*/attack/**
#   asset_manager:artifact/triggers/**
#   asset:artifact/**
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L53
# from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L58
#declare tag Victim

#> declare
# @within
#   asset_manager:artifact/triggers/**
#   asset:artifact/**
    #declare tag DisEquip  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L62
    #declare tag Equip     from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L61
    #declare tag Healer    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L59
    #declare tag Receiver  from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L60
    #declare tag ShotArrow from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L63

#> declare
# @within
#   function asset:artifact/*/*/2.check_condition
#   function asset:artifact/*/*/2.check_condition/**
#   function asset_manager:artifact/check/
#   function asset:artifact/common/use/*
#declare tag CanUsed from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset/functions/artifact/common/_index.d.mcfunction#L10

#> declare
# @within
#   asset_manager:object/**
#   api:object/core/summon
#   asset:object/**
#declare tag ObjectInit from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/object/_index.d.mcfunction#L16

#> declare
# @within
#   core:tick/
#   asset:object/*/register
#   asset_manager:object/summon/init
#declare tag Object.DisableTicking from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/object/_index.d.mcfunction#L29

#> declare
# @within
#   function api:mob/core/summon
#   function asset:mob/*/summon/*
#   function asset:mob/common/summon
#   function asset_manager:mob/summon/init
#declare tag MobInit from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L24

#> declare
# @within
#   asset_manager:mob/triggers/death/*
#   asset_manager:artifact/triggers/attack/vanilla
#   api:damage/core/health_subtract/non-player/kill
#   asset:mob/*/death/**
#declare tag Killer from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/mob/_index.d.mcfunction#L46

#> declare
# @within
#   function mob_manager:processing_tag/common_tag/*
#   function asset:**
    #declare tag AllowRideBannedVehicle   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/processing_tag/_index.d.mcfunction#L31
    #declare tag AlwaysBurn               from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/processing_tag/_index.d.mcfunction#L35
    #declare tag AlwaysInvisible          from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/processing_tag/_index.d.mcfunction#L36
    #declare tag AlwaysSlowFall           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/processing_tag/_index.d.mcfunction#L37
    #declare tag AntiBurn                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/processing_tag/_index.d.mcfunction#L34
    #declare tag AntiFallDamage           from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/processing_tag/_index.d.mcfunction#L32
    #declare tag AntiVoid                 from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/processing_tag/_index.d.mcfunction#L33
    #declare tag AutoKillWhenDiePassenger from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/processing_tag/_index.d.mcfunction#L39
    #declare tag AutoKillWhenDieVehicle   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/processing_tag/_index.d.mcfunction#L38
    #declare tag Drown                    from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/processing_tag/_index.d.mcfunction#L41
    #declare tag Frozen                   from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/processing_tag/_index.d.mcfunction#L40

#> declare
# @within
#   function mob_manager:processing_tag/
#   function asset:**
#   function asset_manager:mob/summon/set_tag
#declare tag ProcessCommonTag from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/mob_manager/functions/processing_tag/_index.d.mcfunction#L25

#> declare
# @within asset:artifact/**
#alias entity selectorTemplate @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..n] from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/asset_manager/functions/artifact/_index.d.mcfunction#L67

#> declare
# @within function asset:object/**
#declare objective General.Object.Tick from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L192

#> declare
# @within function asset:mob/**
#declare objective General.Mob.Tick from c%3A/DataStorage/GitHub/mcsrvctl/server/event/tsb_dev/world/tsb-core/TheSkyBlessing/data/core/functions/load_once.mcfunction#L197
