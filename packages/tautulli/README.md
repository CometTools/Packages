# tautulli (pre-release)

[![Pubdev][pubdev-shield]][pubdev]
![License][license-shield]

Dart library package to facilitate the connection to and from [Tautulli](https://tautulli.com)'s API, a Python based monitoring and tracking tool for Plex Media Server.

## Implementation Status

| API Method | Category | Command |
| :--------- | :------: | ------: |
| [add_newsletter_config][api:add_newsletter_config]                                | X               | X |
| [add_notifier_config][api:add_notifier_config]                                    | X               | X |
| [arnold][api:arnold]                                                              | `miscellaneous` | `arnold()` |
| [backup_config][api:backup_config]                                                | `system`        | `backupConfig()` |
| [backup_db][api:backup_db]                                                        | `system`        | `backupDB()` |
| [delete_all_library_history][api:delete_all_library_history]                      | X               | X |
| [delete_all_user_history][api:delete_all_user_history]                            | X               | X |
| [delete_cache][api:delete_cache]                                                  | `system`        | `deleteCache()` |
| [delete_history][api:delete_history]                                              | X               | X |
| [delete_hosted_images][api:delete_hosted_images]                                  | X               | X |
| [delete_image_cache][api:delete_image_cache]                                      | `system`        | `deleteImageCache()` |
| [delete_library][api:delete_library]                                              | X               | X |
| [delete_login_log][api:delete_login_log]                                          | `system`        | `deleteLoginLog()` |
| [delete_lookup_info][api:delete_lookup_info]                                      | X               | X |
| [delete_media_info_cache][api:delete_media_info_cache]                            | X               | X |
| [delete_mobile_device][api:delete_mobile_device]                                  | X               | X |
| [delete_newsletter][api:delete_newsletter]                                        | X               | X |
| [delete_newsletter_log][api:delete_newsletter_log]                                | X               | X |
| [delete_notification_log][api:delete_notification_log]                            | X               | X |
| [delete_notifier][api:delete_notifier]                                            | X               | X |
| [delete_recently_added][api:delete_recently_added]                                | X               | X |
| [delete_temp_sessions][api:delete_temp_sessions]                                  | X               | X |
| [delete_user][api:delete_user]                                                    | X               | X |
| [docs][api:docs]                                                                  | **N/A**         | **N/A** |
| [docs_md][api:docs_md]                                                            | **N/A**         | **N/A** |
| [download_config][api:download_config]                                            | X               | X |
| [download_database][api:download_database]                                        | X               | X |
| [download_log][api:download_log]                                                  | X               | X |
| [download_plex_log][api:download_plex_log]                                        | X               | X |
| [edit_library][api:edit_library]                                                  | X               | X |
| [edit_user][api:edit_user]                                                        | X               | X |
| [get_activity][api:get_activity]                                                  | `activity`      | `getActivity()` |
| [get_apikey][api:get_apikey]                                                      | **N/A**         | **N/A** |
| [get_date_formats][api:get_date_formats]                                          | `miscellaneous` | `getDateFormats()` |
| [get_geoip_lookup][api:get_geoip_lookup]                                          | X               | X |
| [get_history][api:get_history]                                                    | X               | X |
| [get_home_stats][api:get_home_stats]                                              | X               | X |
| [get_libraries][api:get_libraries]                                                | X               | X |
| [get_libraries_table][api:get_libraries_table]                                    | X               | X |
| [get_library][api:get_library]                                                    | X               | X |
| [get_library_media_info][api:get_library_media_info]                              | X               | X |
| [get_library_names][api:get_library_names]                                        | X               | X |
| [get_library_user_stats][api:get_library_user_stats]                              | X               | X |
| [get_library_watch_time_stats][api:get_library_watch_time_stats]                  | X               | X |
| [get_logs][api:get_logs]                                                          | X               | X |
| [get_metadata][api:get_metadata]                                                  | X               | X |
| [get_new_rating_keys][api:get_new_rating_keys]                                    | X               | X |
| [get_newsletter_config][api:get_newsletter_config]                                | X               | X |
| [get_newsletter_log][api:get_newsletter_log]                                      | X               | X |
| [get_newsletters][api:get_newsletters]                                            | X               | X |
| [get_notification_log][api:get_notification_log]                                  | X               | X |
| [get_notifier_config][api:get_notifier_config]                                    | X               | X |
| [get_notifier_parameters][api:get_notifier_parameters]                            | X               | X |
| [get_notifiers][api:get_notifiers]                                                | X               | X |
| [get_old_rating_keys][api:get_old_rating_keys]                                    | X               | X |
| [get_plays_by_date][api:get_plays_by_date]                                        | X               | X |
| [get_plays_by_dayofweek][api:get_plays_by_dayofweek]                              | X               | X |
| [get_plays_by_hourofday][api:get_plays_by_hourofday]                              | X               | X |
| [get_plays_by_source_resolution][api:get_plays_by_source_resolution]              | X               | X |
| [get_plays_by_stream_resolution][api:get_plays_by_stream_resolution]              | X               | X |
| [get_plays_by_stream_type][api:get_plays_by_stream_type]                          | X               | X |
| [get_plays_by_top_10_platforms][api:get_plays_by_top_10_platforms]                | X               | X |
| [get_plays_by_top_10_users][api:get_plays_by_top_10_users]                        | X               | X |
| [get_plays_per_month][api:get_plays_per_month]                                    | X               | X |
| [get_plex_log][api:get_plex_log]                                                  | X               | X |
| [get_pms_token][api:get_pms_token]                                                | X               | X |
| [get_pms_update][api:get_pms_update]                                              | X               | X |
| [get_recently_added][api:get_recently_added]                                      | X               | X |
| [get_server_friendly_name][api:get_server_friendly_name]                          | X               | X |
| [get_server_id][api:get_server_id]                                                | X               | X |
| [get_server_identity][api:get_server_identity]                                    | X               | X |
| [get_server_list][api:get_server_list]                                            | X               | X |
| [get_server_pref][api:get_server_pref]                                            | X               | X |
| [get_servers_info][api:get_servers_info]                                          | X               | X |
| [get_settings][api:get_settings]                                                  | X               | X |
| [get_stream_data][api:get_stream_data]                                            | X               | X |
| [get_stream_type_by_top_10_platforms][api:get_stream_type_by_top_10_platforms]    | X               | X |
| [get_stream_type_by_top_10_users][api:get_stream_type_by_top_10_users]            | X               | X |
| [get_synced_items][api:get_synced_items]                                          | X               | X |
| [get_user][api:get_user]                                                          | X               | X |
| [get_user_ips][api:get_user_ips]                                                  | X               | X |
| [get_user_logins][api:get_user_logins]                                            | X               | X |
| [get_user_names][api:get_user_names]                                              | X               | X |
| [get_user_player_stats][api:get_user_player_stats]                                | X               | X |
| [get_user_watch_time_stats][api:get_user_watch_time_stats]                        | X               | X |
| [get_users][api:get_users]                                                        | X               | X |
| [get_users_table][api:get_users_table]                                            | X               | X |
| [get_whois_lookup][api:get_whois_lookup]                                          | X               | X |
| [import_database][api:import_database]                                            | X               | X |
| [notify][api:notify]                                                              | X               | X |
| [notify_newsletter][api:notify_newsletter]                                        | X               | X |
| [notify_recently_added][api:notify_recently_added]                                | X               | X |
| [pms_image_proxy][api:pms_image_proxy]                                            | X               | X |
| [refresh_libraries_list][api:refresh_libraries_list]                              | X               | X |
| [refresh_users_list][api:refresh_users_list]                                      | X               | X |
| [register_device][api:register_device]                                            | X               | X |
| [restart][api:restart]                                                            | `system`        | `restart()` |
| [search][api:search]                                                              | X               | X |
| [set_mobile_device_config][api:set_mobile_device_config]                          | X               | X |
| [set_newsletter_config][api:set_newsletter_config]                                | X               | X |
| [set_notifier_config][api:set_notifier_config]                                    | X               | X |
| [sql][api:sql]                                                                    | X               | X |
| [status][api:status]                                                              | X               | X |
| [terminate_session][api:terminate_session]                                        | `activity`      | `terminateSession()` |
| [undelete_library][api:undelete_library]                                          | `library`       | `undeleteLibrary()` |
| [undelete_user][api:undelete_user]                                                | `user`          | `undeleteUser()` |
| [update][api:update]                                                              | `system`        | `update()` |
| [update_check][api:update_check]                                                  | `system`        | `updateCheck()` |
| [update_metadata_details][api:update_metadata_details]                            | `library`       | `updateMetadataDetails()` |

[api:add_newsletter_config]: https://github.com/Tautulli/Tautulli/blob/master/API.md#add_newsletter_config
[api:add_notifier_config]: https://github.com/Tautulli/Tautulli/blob/master/API.md#add_notifier_config
[api:arnold]: https://github.com/Tautulli/Tautulli/blob/master/API.md#arnold
[api:backup_config]: https://github.com/Tautulli/Tautulli/blob/master/API.md#backup_config
[api:backup_db]: https://github.com/Tautulli/Tautulli/blob/master/API.md#backup_db
[api:delete_all_library_history]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_all_library_history
[api:delete_all_user_history]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_all_user_history
[api:delete_cache]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_cache
[api:delete_history]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_history
[api:delete_hosted_images]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_hosted_images
[api:delete_image_cache]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_image_cache
[api:delete_library]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_library
[api:delete_login_log]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_login_log
[api:delete_lookup_info]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_lookup_info
[api:delete_media_info_cache]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_media_info_cache
[api:delete_mobile_device]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_mobile_device
[api:delete_newsletter]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_newsletter
[api:delete_newsletter_log]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_newsletter_log
[api:delete_notification_log]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_notification_log
[api:delete_notifier]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_notifier
[api:delete_recently_added]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_recently_added
[api:delete_temp_sessions]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_newsletter
[api:delete_user]: https://github.com/Tautulli/Tautulli/blob/master/API.md#delete_user
[api:docs]: https://github.com/Tautulli/Tautulli/blob/master/API.md#docs
[api:docs_md]: https://github.com/Tautulli/Tautulli/blob/master/API.md#docs_md
[api:download_config]: https://github.com/Tautulli/Tautulli/blob/master/API.md#download_config
[api:download_database]: https://github.com/Tautulli/Tautulli/blob/master/API.md#download_database
[api:download_log]: https://github.com/Tautulli/Tautulli/blob/master/API.md#download_log
[api:download_plex_log]: https://github.com/Tautulli/Tautulli/blob/master/API.md#download_plex_log
[api:edit_library]: https://github.com/Tautulli/Tautulli/blob/master/API.md#edit_library
[api:edit_user]: https://github.com/Tautulli/Tautulli/blob/master/API.md#edit_user
[api:get_activity]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_activity
[api:get_apikey]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_apikey
[api:get_date_formats]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_date_formats
[api:get_geoip_lookup]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_geoip_lookup
[api:get_history]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_history
[api:get_home_stats]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_home_stats
[api:get_libraries]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_libraries=
[api:get_libraries_table]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_libraries_table
[api:get_library]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_library
[api:get_library_media_info]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_library_media_info
[api:get_library_names]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_library_names
[api:get_library_user_stats]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_library_user_stats
[api:get_library_watch_time_stats]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_library_watch_time_stats
[api:get_logs]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_logs
[api:get_metadata]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_metadata
[api:get_new_rating_keys]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_new_rating_keys
[api:get_newsletter_config]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_newsletter_config
[api:get_newsletter_log]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_newsletter_log
[api:get_newsletters]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_newsletters
[api:get_notification_log]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_notification_log
[api:get_notifier_config]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_notifier_config
[api:get_notifier_parameters]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_notifier_parameters
[api:get_notifiers]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_notifiers
[api:get_old_rating_keys]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_old_rating_keys
[api:get_plays_by_date]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_plays_by_date
[api:get_plays_by_dayofweek]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_plays_by_dayofweek
[api:get_plays_by_hourofday]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_plays_by_hourofday
[api:get_plays_by_source_resolution]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_plays_by_source_resolution
[api:get_plays_by_stream_resolution]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_plays_by_stream_resolution
[api:get_plays_by_stream_type]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_plays_by_stream_type
[api:get_plays_by_top_10_platforms]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_plays_by_top_10_platforms
[api:get_plays_by_top_10_users]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_plays_by_top_10_users
[api:get_plays_per_month]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_plays_per_month
[api:get_plex_log]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_plex_log
[api:get_pms_token]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_pms_token
[api:get_pms_update]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_pms_update
[api:get_recently_added]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_recently_added
[api:get_server_friendly_name]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_server_friendly_name
[api:get_server_id]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_server_id
[api:get_server_identity]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_server_identity
[api:get_server_list]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_server_list
[api:get_server_pref]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_server_pref
[api:get_servers_info]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_servers_info
[api:get_settings]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_settings
[api:get_stream_data]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_stream_data
[api:get_stream_type_by_top_10_platforms]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_stream_type_by_top_10_platforms
[api:get_stream_type_by_top_10_users]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_stream_type_by_top_10_users
[api:get_synced_items]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_synced_items
[api:get_user]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_user
[api:get_user_ips]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_user_ips
[api:get_user_logins]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_user_logins
[api:get_user_names]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_user_names
[api:get_user_player_stats]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_user_player_stats
[api:get_user_watch_time_stats]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_user_watch_time_stats
[api:get_users]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_users
[api:get_users_table]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_users_table
[api:get_whois_lookup]: https://github.com/Tautulli/Tautulli/blob/master/API.md#get_whois_lookup
[api:import_database]: https://github.com/Tautulli/Tautulli/blob/master/API.md#import_database
[api:notify]: https://github.com/Tautulli/Tautulli/blob/master/API.md#notify
[api:notify_newsletter]: https://github.com/Tautulli/Tautulli/blob/master/API.md#notify_newsletter
[api:notify_recently_added]: https://github.com/Tautulli/Tautulli/blob/master/API.md#notify_recently_added
[api:pms_image_proxy]: https://github.com/Tautulli/Tautulli/blob/master/API.md#pms_image_proxy
[api:refresh_libraries_list]: https://github.com/Tautulli/Tautulli/blob/master/API.md#refresh_libraries_list
[api:refresh_users_list]: https://github.com/Tautulli/Tautulli/blob/master/API.md#refresh_users_list
[api:register_device]: https://github.com/Tautulli/Tautulli/blob/master/API.md#register_device
[api:restart]: https://github.com/Tautulli/Tautulli/blob/master/API.md#restart
[api:search]: https://github.com/Tautulli/Tautulli/blob/master/API.md#search
[api:set_mobile_device_config]: https://github.com/Tautulli/Tautulli/blob/master/API.md#set_mobile_device_config
[api:set_newsletter_config]: https://github.com/Tautulli/Tautulli/blob/master/API.md#set_newsletter_config
[api:set_notifier_config]: https://github.com/Tautulli/Tautulli/blob/master/API.md#set_notifier_config
[api:sql]: https://github.com/Tautulli/Tautulli/blob/master/API.md#sql
[api:status]: https://github.com/Tautulli/Tautulli/blob/master/API.md#status
[api:terminate_session]: https://github.com/Tautulli/Tautulli/blob/master/API.md#terminate_session
[api:undelete_library]: https://github.com/Tautulli/Tautulli/blob/master/API.md#undelete_library
[api:undelete_user]: https://github.com/Tautulli/Tautulli/blob/master/API.md#undelete_user
[api:update]: https://github.com/Tautulli/Tautulli/blob/master/API.md#update
[api:update_check]: https://github.com/Tautulli/Tautulli/blob/master/API.md#update_check
[api:update_metadata_details]: https://github.com/Tautulli/Tautulli/blob/master/API.md#update_metadata_details

[license-shield]: https://img.shields.io/github/license/CometTools/Packages?style=for-the-badge
[pubdev]: https://pub.dev/packages/tautulli/
[pubdev-shield]: https://img.shields.io/pub/v/tautulli.svg?style=for-the-badge
