# 0.0.5
- Commands: `get_library_names`
- Commands: `get_library`
- Commands: `get_libraries`
- Commands: `get_server_list`
- Commands: `get_synced_items`
- Commands: `get_user`
- Commands: `get_users`
- Types: TautulliLibraryName
- Types: TautulliLibrary
- Types: TautulliSingleLibrary
- Types: TautulliSyncedItem
- Types: TautulliTableUser
- 
# 0.0.4
- Commands: `delete_recently_added`
- Commands: `delete_temp_sessions`
- Commands: `delete_user`
- Commands: `edit_library`
- Commands: `edit_user`
- Commands: `get_pms_token`
- Commands: `get_server_friendly_name`
- Commands: `get_server_id`
- Commands: `pms_image_proxy`
- Models: TautulliServerIdentity
- Types: TautulliFallbackImage
# 0.0.3+1
- Fixed Exception throwing
- Fixed some comments
# 0.0.3
- Commands: `refresh_users_list`
- Commands: `refresh_libraries_list`
- Commands: `delete_mobile_device`
- Commands: `delete_newsletter`
- Commands: `delete_newsletter_log`
- Commands: `delete_notifier_log`
- Commands: `delete_notifier`
- Commands: `notify_recently_added`
- Commands: `notify_newsletter`
- Commands: `notify`
- Commands: `get_whois_lookup`
- Commands: `get_users_table`
- Models: TautulliUsersTable
- Models: TautulliUser
- Models: TautulliWHOISInfo
- Models: TautulliWHOISSubnet
- Types: TautulliUsersOrderColumn
- BREAKING: Changed `TautulliCommandHandler_User` to `TautulliCommandHandler_Users`
- BREAKING: Changed `TautulliCommandHandler_Library` to `TautulliCommandHandler_Libraries`
# 0.0.2
- Commands: Added history command handler
- Commands: `delete_all_user_history`
- Commands: `delete_history`
- Commands: `delete_hosted_images`
- Commands: `delete_library`
- Commands: `delete_lookup_info`
- Commands: `delete_media_info_cache`
- Commands: `get_geoip_lookup`
- Commands: `get_histoy`
- Models: TautulliHistory
- Models: TautulliHistoryRecord
- Models: TautulliGeolocationInfo
# 0.0.1
- Models: Full deserialization of `TautulliSession`
- Commands: Combined Notifier & Newsletter handlers into Notifications
- Commands: Implemented `add_newsletter_config`
- Commands: Implemented `add_notifier_config`
- Commands: Implemented `status`
- Commands: Implemented `set_notifier_config`
- Commands: Implemented `set_newsletter_config`
- Commands: Implemented `set_mobile_device_config`
- Commands: Implemented `register_device`
- Commands: Implemented `delete_all_library_history`
- Types: TautulliSessionState
- Types: TautulliSessionLocation
- Types: TautulliTranscodeDecision
- Types: Added null/empty value safety
# 0.0.1-pre.6
- Implemented [backup_config](https://github.com/Tautulli/Tautulli/blob/master/API.md#backup_config)
- Implemented [backup_db](https://github.com/Tautulli/Tautulli/blob/master/API.md#backup_db)
# 0.0.1-pre.5
- Updated pubspec.yaml
# 0.0.1-pre.4
- Implemented [restart](https://github.com/Tautulli/Tautulli/blob/master/API.md#restart)
- Implemented [terminate_session](https://github.com/Tautulli/Tautulli/blob/master/API.md#terminate_session)
# 0.0.1-pre.3
- Implemented [update](https://github.com/Tautulli/Tautulli/blob/master/API.md#update)
- Implemented [update_check](https://github.com/Tautulli/Tautulli/blob/master/API.md#update_check)
# 0.0.1-pre.2
- Implemented HTTP client
- Implemented [arnold](https://github.com/Tautulli/Tautulli/blob/master/API.md#arnold)
# 0.0.1-pre.1
- Initial Release
