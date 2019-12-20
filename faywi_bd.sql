-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 20 2019 г., 12:34
-- Версия сервера: 5.5.62
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `faywi_bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actions`
--

CREATE TABLE `modx_access_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_namespace`
--

CREATE TABLE `modx_access_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(22, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(23, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(24, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(25, 1, 'delete_template', 'perm.delete_template_desc', 1),
(26, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(27, 1, 'delete_role', 'perm.delete_role_desc', 1),
(28, 1, 'delete_user', 'perm.delete_user_desc', 1),
(29, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(30, 1, 'directory_create', 'perm.directory_create_desc', 1),
(31, 1, 'directory_list', 'perm.directory_list_desc', 1),
(32, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(33, 1, 'directory_update', 'perm.directory_update_desc', 1),
(34, 1, 'edit_category', 'perm.edit_category_desc', 1),
(35, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(36, 1, 'edit_context', 'perm.edit_context_desc', 1),
(37, 1, 'edit_document', 'perm.edit_document_desc', 1),
(38, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(39, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(40, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(41, 1, 'edit_role', 'perm.edit_role_desc', 1),
(42, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(43, 1, 'edit_template', 'perm.edit_template_desc', 1),
(44, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(45, 1, 'edit_user', 'perm.edit_user_desc', 1),
(46, 1, 'element_tree', 'perm.element_tree_desc', 1),
(47, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(48, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(49, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(50, 1, 'export_static', 'perm.export_static_desc', 1),
(51, 1, 'file_create', 'perm.file_create_desc', 1),
(52, 1, 'file_list', 'perm.file_list_desc', 1),
(53, 1, 'file_manager', 'perm.file_manager_desc', 1),
(54, 1, 'file_remove', 'perm.file_remove_desc', 1),
(55, 1, 'file_tree', 'perm.file_tree_desc', 1),
(56, 1, 'file_update', 'perm.file_update_desc', 1),
(57, 1, 'file_upload', 'perm.file_upload_desc', 1),
(58, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(59, 1, 'file_view', 'perm.file_view_desc', 1),
(60, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(61, 1, 'frames', 'perm.frames_desc', 1),
(62, 1, 'help', 'perm.help_desc', 1),
(63, 1, 'home', 'perm.home_desc', 1),
(64, 1, 'import_static', 'perm.import_static_desc', 1),
(65, 1, 'languages', 'perm.languages_desc', 1),
(66, 1, 'lexicons', 'perm.lexicons_desc', 1),
(67, 1, 'list', 'perm.list_desc', 1),
(68, 1, 'load', 'perm.load_desc', 1),
(69, 1, 'logout', 'perm.logout_desc', 1),
(70, 1, 'logs', 'perm.logs_desc', 1),
(71, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(72, 1, 'menu_security', 'perm.menu_security_desc', 1),
(73, 1, 'menu_site', 'perm.menu_site_desc', 1),
(74, 1, 'menu_support', 'perm.menu_support_desc', 1),
(75, 1, 'menu_system', 'perm.menu_system_desc', 1),
(76, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(77, 1, 'menu_trash', 'perm.menu_trash_desc', 1),
(78, 1, 'menu_user', 'perm.menu_user_desc', 1),
(79, 1, 'menus', 'perm.menus_desc', 1),
(80, 1, 'messages', 'perm.messages_desc', 1),
(81, 1, 'namespaces', 'perm.namespaces_desc', 1),
(82, 1, 'new_category', 'perm.new_category_desc', 1),
(83, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(84, 1, 'new_context', 'perm.new_context_desc', 1),
(85, 1, 'new_document', 'perm.new_document_desc', 1),
(86, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(87, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(88, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(89, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(90, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(91, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(92, 1, 'new_role', 'perm.new_role_desc', 1),
(93, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(94, 1, 'new_template', 'perm.new_template_desc', 1),
(95, 1, 'new_tv', 'perm.new_tv_desc', 1),
(96, 1, 'new_user', 'perm.new_user_desc', 1),
(97, 1, 'packages', 'perm.packages_desc', 1),
(98, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(99, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(100, 1, 'policy_new', 'perm.policy_new_desc', 1),
(101, 1, 'policy_save', 'perm.policy_save_desc', 1),
(102, 1, 'policy_view', 'perm.policy_view_desc', 1),
(103, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(104, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(105, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(106, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(107, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(108, 1, 'property_sets', 'perm.property_sets_desc', 1),
(109, 1, 'providers', 'perm.providers_desc', 1),
(110, 1, 'publish_document', 'perm.publish_document_desc', 1),
(111, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(112, 1, 'remove', 'perm.remove_desc', 1),
(113, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(114, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(115, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(116, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(117, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(118, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(119, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(120, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(121, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(122, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(123, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(124, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(125, 1, 'save', 'perm.save_desc', 1),
(126, 1, 'save_category', 'perm.save_category_desc', 1),
(127, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(128, 1, 'save_context', 'perm.save_context_desc', 1),
(129, 1, 'save_document', 'perm.save_document_desc', 1),
(130, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(131, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(132, 1, 'save_role', 'perm.save_role_desc', 1),
(133, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(134, 1, 'save_template', 'perm.save_template_desc', 1),
(135, 1, 'save_tv', 'perm.save_tv_desc', 1),
(136, 1, 'save_user', 'perm.save_user_desc', 1),
(137, 1, 'search', 'perm.search_desc', 1),
(138, 1, 'set_sudo', 'perm.set_sudo_desc', 1),
(139, 1, 'settings', 'perm.settings_desc', 1),
(140, 1, 'events', 'perm.events_desc', 1),
(141, 1, 'source_save', 'perm.source_save_desc', 1),
(142, 1, 'source_delete', 'perm.source_delete_desc', 1),
(143, 1, 'source_edit', 'perm.source_edit_desc', 1),
(144, 1, 'source_view', 'perm.source_view_desc', 1),
(145, 1, 'sources', 'perm.sources_desc', 1),
(146, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(147, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(148, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(149, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(150, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(151, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(152, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(153, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(154, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(155, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(156, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(157, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(158, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(159, 1, 'view', 'perm.view_desc', 1),
(160, 1, 'view_category', 'perm.view_category_desc', 1),
(161, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(162, 1, 'view_context', 'perm.view_context_desc', 1),
(163, 1, 'view_document', 'perm.view_document_desc', 1),
(164, 1, 'view_element', 'perm.view_element_desc', 1),
(165, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(166, 1, 'view_offline', 'perm.view_offline_desc', 1),
(167, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(168, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(169, 1, 'view_role', 'perm.view_role_desc', 1),
(170, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(171, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(172, 1, 'view_template', 'perm.view_template_desc', 1),
(173, 1, 'view_tv', 'perm.view_tv_desc', 1),
(174, 1, 'view_user', 'perm.view_user_desc', 1),
(175, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(176, 1, 'workspaces', 'perm.workspaces_desc', 1),
(177, 2, 'add_children', 'perm.add_children_desc', 1),
(178, 2, 'copy', 'perm.copy_desc', 1),
(179, 2, 'create', 'perm.create_desc', 1),
(180, 2, 'delete', 'perm.delete_desc', 1),
(181, 2, 'list', 'perm.list_desc', 1),
(182, 2, 'load', 'perm.load_desc', 1),
(183, 2, 'move', 'perm.move_desc', 1),
(184, 2, 'publish', 'perm.publish_desc', 1),
(185, 2, 'remove', 'perm.remove_desc', 1),
(186, 2, 'save', 'perm.save_desc', 1),
(187, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(188, 2, 'undelete', 'perm.undelete_desc', 1),
(189, 2, 'unpublish', 'perm.unpublish_desc', 1),
(190, 2, 'view', 'perm.view_desc', 1),
(191, 3, 'load', 'perm.load_desc', 1),
(192, 3, 'list', 'perm.list_desc', 1),
(193, 3, 'view', 'perm.view_desc', 1),
(194, 3, 'save', 'perm.save_desc', 1),
(195, 3, 'remove', 'perm.remove_desc', 1),
(196, 4, 'add_children', 'perm.add_children_desc', 1),
(197, 4, 'create', 'perm.create_desc', 1),
(198, 4, 'copy', 'perm.copy_desc', 1),
(199, 4, 'delete', 'perm.delete_desc', 1),
(200, 4, 'list', 'perm.list_desc', 1),
(201, 4, 'load', 'perm.load_desc', 1),
(202, 4, 'remove', 'perm.remove_desc', 1),
(203, 4, 'save', 'perm.save_desc', 1),
(204, 4, 'view', 'perm.view_desc', 1),
(205, 5, 'create', 'perm.create_desc', 1),
(206, 5, 'copy', 'perm.copy_desc', 1),
(207, 5, 'list', 'perm.list_desc', 1),
(208, 5, 'load', 'perm.load_desc', 1),
(209, 5, 'remove', 'perm.remove_desc', 1),
(210, 5, 'save', 'perm.save_desc', 1),
(211, 5, 'view', 'perm.view_desc', 1),
(212, 6, 'load', 'perm.load_desc', 1),
(213, 6, 'list', 'perm.list_desc', 1),
(214, 6, 'view', 'perm.view_desc', 1),
(215, 6, 'save', 'perm.save_desc', 1),
(216, 6, 'remove', 'perm.remove_desc', 1),
(217, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(218, 6, 'copy', 'perm.copy_desc', 1),
(219, 7, 'list', 'perm.list_desc', 1),
(220, 7, 'load', 'perm.load_desc', 1),
(221, 7, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true,\"new_document\":true,\"delete_document\":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true}', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(191) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions`
--

CREATE TABLE `modx_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(191) NOT NULL,
  `haslayout` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(191) NOT NULL DEFAULT '',
  `other` varchar(191) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(33, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(34, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(35, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(36, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(37, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(38, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(39, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(40, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(41, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(42, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(43, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(44, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(45, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(46, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(47, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(48, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(49, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(50, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(51, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(52, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(53, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(54, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(55, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(56, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(57, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(58, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(59, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(60, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(61, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(62, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(63, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(64, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(65, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(66, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(67, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(68, 'resource/create', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(69, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(70, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(71, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(72, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(73, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(74, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(75, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(76, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(77, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(78, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `parent`, `category`, `rank`) VALUES
(1, 0, 'tagElementPlugin', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `depth` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_categories_closure`
--

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(1, 1, 0),
(0, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_class_map`
--

CREATE TABLE `modx_class_map` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(191) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:resource'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('web', 'Website', 'The default front-end context for your web site.', 0),
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(191) NOT NULL DEFAULT 'half'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `widget` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 3, 1),
(1, 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(191) NOT NULL DEFAULT '',
  `service_class` varchar(191) NOT NULL DEFAULT '',
  `service_name` varchar(191) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(191) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2019-06-09 13:45:21', 'login', 'modContext', 'mgr'),
(2, 1, '2019-06-09 13:50:53', 'setting_update', 'modSystemSetting', 'friendly_urls'),
(3, 1, '2019-06-09 13:50:58', 'setting_update', 'modSystemSetting', 'global_duplicate_uri_check'),
(4, 1, '2019-06-09 13:51:00', 'setting_update', 'modSystemSetting', 'friendly_urls_strict'),
(5, 1, '2019-06-09 13:51:06', 'setting_update', 'modSystemSetting', 'use_alias_path'),
(6, 1, '2019-06-09 13:51:08', 'setting_update', 'modSystemSetting', 'use_frozen_parent_uris'),
(7, 1, '2019-06-09 13:52:06', 'setting_update', 'modSystemSetting', 'friendly_alias_translit'),
(8, 1, '2019-06-09 13:52:25', 'setting_update', 'modSystemSetting', 'container_suffix'),
(9, 1, '2019-06-09 13:52:26', 'setting_update', 'modSystemSetting', 'friendly_alias_lowercase_only'),
(10, 1, '2019-06-09 13:52:47', 'content_type_save', 'modContentType', '1'),
(11, 1, '2019-06-09 13:53:34', 'clear_cache', '', 'mgr'),
(12, 1, '2019-06-09 13:53:50', 'clear_cache', '', 'mgr'),
(13, 1, '2019-06-09 13:53:55', 'clear_cache', '', 'mgr'),
(14, 1, '2019-06-09 14:02:15', 'dashboard_update', 'modDashboard', '1'),
(15, 1, '2019-06-09 14:02:26', 'dashboard_update', 'modDashboard', '1'),
(16, 1, '2019-06-09 14:09:37', 'resource_create', 'modDocument', '2'),
(17, 1, '2019-06-09 14:10:31', 'resource_update', 'modResource', '2'),
(18, 1, '2019-06-09 14:11:14', 'resource_create', 'modDocument', '3'),
(19, 1, '2019-06-09 14:11:36', 'resource_create', 'modDocument', '4'),
(20, 1, '2019-06-09 14:11:56', 'resource_create', 'modDocument', '5'),
(21, 1, '2019-06-19 21:28:10', 'login', 'modContext', 'mgr'),
(22, 1, '2019-06-19 21:32:21', 'template_update', 'modTemplate', '1'),
(23, 1, '2019-06-19 21:32:22', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(24, 1, '2019-06-19 21:32:40', 'template_update', 'modTemplate', '1'),
(25, 1, '2019-06-19 21:32:40', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(26, 1, '2019-06-19 21:35:12', 'chunk_create', 'modChunk', '1'),
(27, 1, '2019-06-19 21:35:43', 'chunk_create', 'modChunk', '2'),
(28, 1, '2019-06-19 21:37:16', 'chunk_create', 'modChunk', '3'),
(29, 1, '2019-06-19 21:38:28', 'chunk_update', 'modChunk', '2'),
(30, 1, '2019-06-19 21:38:35', 'template_update', 'modTemplate', '1'),
(31, 1, '2019-06-19 21:38:35', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(32, 1, '2019-06-19 21:39:48', 'chunk_create', 'modChunk', '4'),
(33, 1, '2019-06-19 21:40:26', 'chunk_create', 'modChunk', '5'),
(34, 1, '2019-06-19 21:42:42', 'chunk_create', 'modChunk', '6'),
(35, 1, '2019-06-19 21:43:31', 'chunk_create', 'modChunk', '7'),
(36, 1, '2019-06-19 21:43:53', 'chunk_create', 'modChunk', '8'),
(37, 1, '2019-06-19 21:44:16', 'template_update', 'modTemplate', '1'),
(38, 1, '2019-06-19 21:44:16', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(39, 1, '2019-06-19 21:44:39', 'resource_update', 'modResource', '1'),
(40, 1, '2019-06-19 21:44:57', 'resource_update', 'modResource', '1'),
(41, 1, '2019-06-19 21:45:04', 'template_update', 'modTemplate', '1'),
(42, 1, '2019-06-19 21:45:04', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(43, 1, '2019-06-19 21:46:02', 'template_update', 'modTemplate', '1'),
(44, 1, '2019-06-19 21:46:02', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(45, 1, '2019-06-19 21:46:08', 'resource_update', 'modResource', '1'),
(46, 1, '2019-06-19 21:47:04', 'resource_update', 'modResource', '1'),
(47, 1, '2019-06-19 21:50:54', 'resource_update', 'modResource', '2'),
(48, 1, '2019-06-19 21:51:45', 'resource_update', 'modResource', '2'),
(49, 1, '2019-06-19 21:52:56', 'chunk_update', 'modChunk', '2'),
(50, 1, '2019-06-19 21:52:56', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(51, 1, '2019-06-19 21:53:42', 'delete_resource', 'modDocument', '3'),
(52, 1, '2019-06-19 21:55:02', 'resource_update', 'modResource', '4'),
(53, 1, '2019-06-19 21:55:38', 'undelete_resource', 'modResource', '3'),
(54, 1, '2019-06-19 21:56:54', 'resource_update', 'modResource', '3'),
(55, 1, '2019-06-19 21:56:58', 'resource_update', 'modResource', '3'),
(56, 1, '2019-06-19 21:59:42', 'resource_update', 'modResource', '5'),
(57, 1, '2019-06-19 22:00:19', 'resource_update', 'modResource', '5'),
(58, 1, '2019-06-19 22:00:59', 'template_update', 'modTemplate', '1'),
(59, 1, '2019-06-19 22:01:00', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(60, 1, '2019-06-19 22:02:45', 'resource_update', 'modResource', '1'),
(61, 1, '2019-06-19 22:03:40', 'resource_update', 'modResource', '2'),
(62, 1, '2019-06-19 22:04:36', 'resource_create', 'modDocument', '6'),
(63, 1, '2019-06-19 22:06:33', 'chunk_update', 'modChunk', '2'),
(64, 1, '2019-06-19 22:06:34', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(65, 1, '2019-06-19 22:08:51', 'chunk_update', 'modChunk', '1'),
(66, 1, '2019-06-19 22:08:51', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 1 Default'),
(67, 1, '2019-06-19 22:09:06', 'chunk_update', 'modChunk', '3'),
(68, 1, '2019-06-19 22:09:06', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(69, 1, '2019-06-19 22:10:02', 'chunk_update', 'modChunk', '2'),
(70, 1, '2019-06-19 22:10:02', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(71, 1, '2019-06-19 22:10:26', 'chunk_update', 'modChunk', '2'),
(72, 1, '2019-06-19 22:10:27', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(73, 1, '2019-06-19 22:10:53', 'chunk_update', 'modChunk', '3'),
(74, 1, '2019-06-19 22:10:54', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(75, 1, '2019-06-19 22:11:13', 'chunk_update', 'modChunk', '3'),
(76, 1, '2019-06-19 22:11:13', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(77, 1, '2019-06-19 22:13:03', 'resource_update', 'modResource', '6'),
(78, 1, '2019-06-19 22:13:43', 'chunk_update', 'modChunk', '8'),
(79, 1, '2019-06-19 22:13:43', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 8 Default'),
(80, 1, '2019-06-19 22:14:44', 'resource_create', 'modDocument', '7'),
(81, 1, '2019-06-19 22:16:58', 'resource_create', 'modDocument', '8'),
(82, 1, '2019-06-19 22:17:54', 'resource_create', 'modDocument', '9'),
(83, 1, '2019-06-19 22:18:25', 'resource_update', 'modResource', '9'),
(84, 1, '2019-06-19 22:18:34', 'resource_update', 'modResource', '8'),
(85, 1, '2019-06-19 22:18:41', 'resource_update', 'modResource', '7'),
(86, 1, '2019-06-19 22:20:23', 'resource_create', 'modDocument', '10'),
(87, 1, '2019-06-19 22:20:28', 'resource_update', 'modResource', '10'),
(88, 1, '2019-06-19 22:21:08', 'resource_create', 'modDocument', '11'),
(89, 1, '2019-06-19 22:22:33', 'resource_create', 'modDocument', '12'),
(90, 1, '2019-06-19 22:23:22', 'resource_create', 'modDocument', '13'),
(91, 1, '2019-06-19 22:24:37', 'chunk_update', 'modChunk', '3'),
(92, 1, '2019-06-19 22:24:37', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(93, 1, '2019-06-19 22:26:01', 'chunk_update', 'modChunk', '3'),
(94, 1, '2019-06-19 22:26:01', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 3 Default'),
(95, 1, '2019-06-19 22:26:43', 'resource_update', 'modResource', '10'),
(96, 1, '2019-06-19 22:27:58', 'chunk_update', 'modChunk', '2'),
(97, 1, '2019-06-19 22:27:58', 'propertyset_update_from_element', 'modPropertySet', 'modChunk 2 Default'),
(98, 1, '2019-06-19 23:25:27', 'clear_cache', '', 'mgr'),
(99, 1, '2019-12-20 12:28:37', 'login', 'modContext', 'mgr');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 7, '', '', 'help', 'core');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('core', '{core_path}', '{assets_path}'),
('translit', '{core_path}components/translit/', ''),
('tagelementplugin', '{core_path}components/tagelementplugin/', ''),
('ace', '{core_path}components/ace/', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(191) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_register_messages`
--

INSERT INTO `modx_register_messages` (`topic`, `id`, `created`, `valid`, `accessed`, `accesses`, `expires`, `payload`, `kill`) VALUES
(2, '21232f297a57a5a743894a0e4a801fc3', '2019-06-19 22:31:05', '2019-06-19 22:31:05', NULL, 0, 1561059065, 'if (time() > 1561059065) return null;\nreturn \'e0ba9542db2eaebc4e1ac0e1eccd66bc\';\n', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}'),
(2, 'user', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2019-06-09 14:09:37', NULL, NULL),
(2, 2, '/pwd/reset/', '2019-06-19 22:31:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('rc50nlimag727884lenvu7da4v95qkjk', 1560972637, 'modx.user.contextTokens|a:0:{}login_failed|i:5;'),
('qlmpgevgivhq1ujeqrvvo45pq7i0pja4', 1561399849, 'modx.user.contextTokens|a:0:{}'),
('5ltb8uo5c1lprl01gfrce24niga919ev', 1561404783, 'modx.user.contextTokens|a:0:{}'),
('e0vb3tmqkkq7gearm6ijphp4kmkohske', 1576834117, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx5cfce3079eb5f9.68716796_15dfc944510f692.93900546\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('6540f2c26g2oj2lbs0udim1kjflkjijh', 1560972566, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}login_failed|i:4;modx.mgr.user.token|s:52:\"modx5cfce3079eb5f9.68716796_15d0a7eba29f6b5.33890356\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:48:{i:0;s:23:\"5d0a82890148d5.09935501\";i:1;s:23:\"5d0a82ebdd3711.57085533\";i:2;s:23:\"5d0a83787bc1f1.37457803\";i:3;s:23:\"5d0a841263ced5.73868200\";i:4;s:23:\"5d0a8414e808a9.42555457\";i:5;s:23:\"5d0a841b8b2724.85616798\";i:6;s:23:\"5d0a8457eca779.26130071\";i:7;s:23:\"5d0a849723b380.16328515\";i:8;s:23:\"5d0a84b250c299.65931008\";i:9;s:23:\"5d0a84ba1d1927.17585886\";i:10;s:23:\"5d0a84bc594865.24487367\";i:11;s:23:\"5d0a852cb0cf07.93744968\";i:12;s:23:\"5d0a85c7054224.08613340\";i:13;s:23:\"5d0a862c8b0af9.13202678\";i:14;s:23:\"5d0a866fc69726.78642747\";i:15;s:23:\"5d0a868bbde430.37864888\";i:16;s:23:\"5d0a86a6d877c3.08324371\";i:17;s:23:\"5d0a86f2320901.38221637\";i:18;s:23:\"5d0a87041f1ab1.91584137\";i:19;s:23:\"5d0a870f23bec8.84180405\";i:20;s:23:\"5d0a874602b2d5.23633520\";i:21;s:23:\"5d0a88ffe47a13.63373950\";i:22;s:23:\"5d0a89711a1ce2.47551174\";i:23;s:23:\"5d0a89a616fcf8.44190142\";i:24;s:23:\"5d0a89f29d3ab0.27353773\";i:25;s:23:\"5d0a8a2c38a952.49111486\";i:26;s:23:\"5d0a8a35474ee3.21958306\";i:27;s:23:\"5d0a8a63cd1a21.10184069\";i:28;s:23:\"5d0a8a788134b4.76366748\";i:29;s:23:\"5d0a8a82ae1c43.00776226\";i:30;s:23:\"5d0a8a8c01f9f6.82893956\";i:31;s:23:\"5d0a8a95342575.39324889\";i:32;s:23:\"5d0a8ab0b830a3.09078744\";i:33;s:23:\"5d0a8ac1212d70.02626357\";i:34;s:23:\"5d0a8af89b1c46.86941574\";i:35;s:23:\"5d0a8afeb77647.86250977\";i:36;s:23:\"5d0a8b2627e7a7.17977806\";i:37;s:23:\"5d0a8b29666b52.55165691\";i:38;s:23:\"5d0a8b7ab5fa14.10350127\";i:39;s:23:\"5d0a8b85b608d5.85964719\";i:40;s:23:\"5d0a8bac452e23.48797990\";i:41;s:23:\"5d0a8c17501bd3.44597663\";i:42;s:23:\"5d0a8c17a40cb1.94087996\";i:43;s:23:\"5d0a8c63158969.94299038\";i:44;s:23:\"5d0a8c757f4159.84168297\";i:45;s:23:\"5d0a8c7cad1790.06705808\";i:46;s:23:\"5d0a8c80e85d89.85940690\";i:47;s:23:\"5d0a8d16bc6528.72533872\";}modx.user.1.userGroups|a:1:{i:0;i:1;}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `alias` varchar(191) DEFAULT '',
  `alias_visible` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `link_attributes` varchar(191) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(191) NOT NULL DEFAULT '',
  `donthit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `alias_visible`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Головна', 'Підключення інтернету в транспорті', '', 'index', 1, '', 1, 0, 0, 0, 0, '', '  <section class=\"section section-top section-top-main\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-lg-5 align-self-center\">\r\n          <h1>Підключення інтернету <span>в транспорті</span></h1>\r\n          <p>Безперебійний доступ в інтернет в будь-якому місці, у будь-який час</p>\r\n          <a href=\"#feedback\"><button class=\"btn btn-branded btn-large\">Залишити заявку</button></a>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n\r\n [[$services-block]]\r\n\r\n [[$advantages]]\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"title\">\r\n        <h2 class=\"title__upper\">Чому інтернет від Faywi працює стабільно</h2>\r\n      </div>\r\n      <div class=\"row\">\r\n        <div class=\"col-lg-6 align-self-center\">\r\n          <div class=\"title text-left\">\r\n            <h3 class=\"title__upper\">Ми використовуємо унікальну технологію \"Розумний інтернет\"</h3>\r\n          </div>\r\n          <div class=\"content-title\">\r\n            <h3 class=\"content-title__upper\">Логіка роботи:</h3>\r\n          </div>\r\n          <ul class=\"list-ui\">\r\n            <li>У системі використовуються різні оператори зв\'язку (до 8-ми одночасно). Наприклад, Київстар,\r\n              Vodafone,Lifecell, Інтертелеком</li>\r\n            <li>Система визначає кращого оператора і підключається до нього</li>\r\n            <li>Якщо є кілька операторів, то швидкість підсумовується</li>\r\n            <li>Таким чином на всьому маршруті є якісний інтернет!</li>\r\n          </ul>\r\n        </div>\r\n        <div class=\"col-lg-6\">\r\n          <img src=\"img/internet-coverage.png\" class=\"ui-img-radius\" alt=\"\">\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n\r\n[[$order]]\r\n[[$feedback]]\r\n[[$partners]]', 1, 1, 0, 1, 1, 1, 1560077088, 1, 1560970965, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'index', 0, 0, 1, NULL),
(2, 'document', 'text/html', 'Послуги', 'Послуги', 'services', 'services', 1, '', 1, 0, 0, 0, 1, '', ' <section class=\"section section-top section-top-page\">\r\n    <div class=\"container\">\r\n      <h1>Послуги</h1>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <div class=\"title\">\r\n            <h2 class=\"title__upper\">Кращі рішення від Faywi</h2>\r\n          </div>\r\n          <p>Розроблено для безперебійного доступу в інтернет в будь-яких видах наземного і водного транспорту, в\r\n            громадських місцях і на заходах.</p>\r\n          <p>Фахівці Faywi розробили алгоритм агрегації (об\'єднання) каналів мобільного інтернету від декількох\r\n            операторів, що забезпечує по-справжньому високу швидкість підключення в будь-якій ситуації. Для кожного\r\n            випадку ми опрацьовуємо окреме рішення, виходячи ваших потреб: кількості користувачів, площі покриття,\r\n            маршруту пересування, періоду використання і багато чого іншого. Подивіться всі рішення Faywi і підберіть\r\n            відповідне вам.</p>\r\n        </div>\r\n        <div class=\"col-md-6\">\r\n          <img src=\"img/solutions__1.png\" alt=\"\">\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n\r\n[[$services-block]]\r\n[[$order]]\r\n[[$feedback]]\r\n[[$partners]]', 1, 1, 1, 1, 1, 1, 1560078577, 1, 1560971020, 0, 0, 0, 1560970260, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'services', 0, 0, 1, NULL),
(3, 'document', 'text/html', 'Про нас', 'Про нас', '', 'about-us', 1, '', 1, 0, 0, 0, 1, '', ' <section class=\"section section-top section-top-page\">\r\n    <div class=\"container\">\r\n      <h1>Про нас</h1>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <h3>Зібралася команда ентузіастів, кістяк, який працює в Faywi до теперішнього часу.</h3><br><br>\r\n          <p>Faywi - це компанія з підключення 4G / 3G інтернету по всьому світу. Мы рацюємо на ринку бездротового\r\n            інтернету з 2005 року. За рік ми допомогли поліпшити сервіс 29 великих компаній, що займаються міжнародними\r\n            автобусними перевезеннями. Тільки за вересень 2018 року більше 90 000 пасажирів скористалися інтернетом,\r\n            який ми встановили в автобусах. На був встановилений перший працюючий інтернет у швидкісних поїздах України.\r\n          </p>\r\n          <p>Основна діяльність команди - розробка програмного забезпечення для маршрутизаторів, роздрібна та оптова продаж мережевого устаткування для домашніх і офісних користувачів.</p>\r\n        </div>\r\n        <div class=\"col-md-6\">\r\n          <img src=\"img/company.png\" alt=\"\">\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content section-light-gray\">\r\n    <div class=\"container\">\r\n      <div class=\"title\">\r\n        <h2 class=\"title__upper\">Наша команда</h2>\r\n        <p class=\"title__description\">Високоспеціалізовані фахівці в своїй галузі</p>\r\n      </div>\r\n      <div class=\"row\">\r\n        <div class=\"col-lg-3 col-md-6\">\r\n          <div class=\"team-box\">\r\n            <div class=\"team-box__img\"\r\n              style=\"background-image:url(\'https://www.kajeet.net/hs-fs/hubfs/daniel1mini.jpg\')\"></div>\r\n            <div class=\"team-box__description\">\r\n              <h4>Михайло Замаєв</h4>\r\n              <span>Генеральний директор і засновник</span>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-lg-3 col-md-6\">\r\n          <div class=\"team-box\">\r\n            <div class=\"team-box__img\"\r\n              style=\"background-image:url(\'https://www.kajeet.net/hs-fs/hubfs/ben-newmini.jpg?t=1526035625833&width=225&name=ben-newmini.jpg\')\">\r\n            </div>\r\n            <div class=\"team-box__description\">\r\n              <h4>Богдан Кайдашов</h4>\r\n              <span>Засновник, член правління</span>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-lg-3 col-md-6\">\r\n          <div class=\"team-box\">\r\n            <div class=\"team-box__img\"\r\n              style=\"background-image:url(\'https://www.kajeet.net/hs-fs/hubfs/davetmini.jpg?t=1526035625833&width=225&name=davetmini.jpg\')\">\r\n            </div>\r\n            <div class=\"team-box__description\">\r\n              <h4>Станіслав Бабак</h4>\r\n              <span>Старший віце-президент з маркетингу та продажів</span>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-lg-3 col-md-6\">\r\n          <div class=\"team-box\">\r\n            <div class=\"team-box__img\"\r\n              style=\"background-image:url(\'https://www.kajeet.net/hs-fs/hubfs/michaelmini.jpg?t=1526035625833&width=225&name=michaelmini.jpg\')\">\r\n            </div>\r\n            <div class=\"team-box__description\">\r\n              <h4>Віталій Конарейко</h4>\r\n              <span>Віце-президент, Операції</span>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-lg-3 col-md-6\">\r\n          <div class=\"team-box\">\r\n            <div class=\"team-box__img\"\r\n              style=\"background-image:url(\'https://www.kajeet.net/hs-fs/hubfs/molly-new.png?t=1526035625833&width=225&name=molly-new.png\')\">\r\n            </div>\r\n            <div class=\"team-box__description\">\r\n              <h4>Катерина Білик</h4>\r\n              <span>Віце-президент з надання послуг</span>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-lg-3 col-md-6\">\r\n          <div class=\"team-box\">\r\n            <div class=\"team-box__img\"\r\n              style=\"background-image:url(\'https://www.kajeet.net/hs-fs/hubfs/Team%20Photos/David_P.png?t=1526035625833&width=225&name=David_P.png\')\">\r\n            </div>\r\n            <div class=\"team-box__description\">\r\n              <h4>Андрій Панін</h4>\r\n              <span>Віце-президент, інженер</span>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-lg-3 col-md-6\">\r\n          <div class=\"team-box\">\r\n            <div class=\"team-box__img\"\r\n              style=\"background-image:url(\'https://www.kajeet.net/hs-fs/hubfs/Michael_Fahey.jpg?t=1526035625833&width=225&name=Michael_Fahey.jpg\')\">\r\n            </div>\r\n            <div class=\"team-box__description\">\r\n              <h4>Ігорь Пономарьов</h4>\r\n              <span>Віце-президент з продажів</span>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-lg-3 col-md-6\">\r\n          <div class=\"team-box\">\r\n            <div class=\"team-box__img\"\r\n              style=\"background-image:url(\'https://www.kajeet.net/hubfs/Greg%20Carter.jpeg\')\">\r\n            </div>\r\n            <div class=\"team-box__description\">\r\n              <h4>Борис Кобильов</h4>\r\n              <span>Директор з маркетингу</span>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n        <div class=\"title\">\r\n            <h2 class=\"title__upper\">Тільки деякі наших чудових клієнтів</h2>\r\n          </div>\r\n      <img src=\"https://www.kajeet.net/hs-fs/hubfs/kajeet_2018/images/Kajeet-Customers_2017.png?width=2334&name=Kajeet-Customers_2017.png\" alt=\"\">\r\n    </div>\r\n  </section>\r\n[[$feedback]]\r\n[[$partners]]', 1, 1, 2, 1, 1, 1, 1560078674, 1, 1560970618, 0, 0, 0, 1560970618, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'about-us', 0, 0, 1, NULL),
(4, 'document', 'text/html', 'Ціни', 'Ціни', '', 'price', 1, '', 1, 0, 0, 0, 0, '', ' <section class=\"section section-top section-top-page\">\r\n    <div class=\"container\">\r\n      <h1>Ціни</h1>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-4\">\r\n          <div class=\"box-sentence-price-wrapper\">\r\n            <div class=\"box-sentence-wrapper\">\r\n              <a href=\"/bus.html\">\r\n                <div class=\"box-sentence\">\r\n                  <div class=\"box-sentence__wrapper-images\">\r\n                    <div class=\"box-sentence__images\">\r\n                      <img src=\"img/sentence__4.svg\" alt=\"\">\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"title box-sentence__title\">\r\n                    <h3 class=\"title__upper\">Інтернет для авто</h3>\r\n                  </div>\r\n                  <div class=\"box-sentence__price\">\r\n                    <span>Ціна</span>\r\n                    <span>11 000 грн</span>\r\n                  </div>\r\n                  <div class=\"box-sentence__button\">\r\n                    <button class=\"btn btn-branded btn-medium\">Детальніше</button>\r\n                  </div>\r\n                </div>\r\n              </a>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-4\">\r\n          <div class=\"box-sentence-price-wrapper\">\r\n            <div class=\"box-sentence-wrapper\">\r\n              <a href=\"/bus.html\">\r\n                <div class=\"box-sentence\">\r\n                  <div class=\"box-sentence__wrapper-images\">\r\n                    <div class=\"box-sentence__images\">\r\n                      <img src=\"img/sentence__1.svg\" alt=\"\">\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"title box-sentence__title\">\r\n                    <h3 class=\"title__upper\">Інтернет для громадського транспорту</h3>\r\n                  </div>\r\n                  <div class=\"box-sentence__price\">\r\n                    <span>Ціна</span>\r\n                    <span>15 000 грн</span>\r\n                  </div>\r\n                  <div class=\"box-sentence__button\">\r\n                    <button class=\"btn btn-branded btn-medium\">Детальніше</button>\r\n                  </div>\r\n                </div>\r\n              </a>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-4\">\r\n          <div class=\"box-sentence-price-wrapper\">\r\n            <div class=\"box-sentence-wrapper\">\r\n              <a href=\"/bus.html\">\r\n                <div class=\"box-sentence\">\r\n                  <div class=\"box-sentence__wrapper-images\">\r\n                    <div class=\"box-sentence__images\">\r\n                      <img src=\"img/sentence__2.svg\" alt=\"\">\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"title box-sentence__title\">\r\n                    <h3 class=\"title__upper\">Інтернет для автобусів</h3>\r\n                  </div>\r\n                  <div class=\"box-sentence__price\">\r\n                    <span>Ціна</span>\r\n                    <span>17 000 грн</span>\r\n                  </div>\r\n                  <div class=\"box-sentence__button\">\r\n                    <button class=\"btn btn-branded btn-medium\">Детальніше</button>\r\n                  </div>\r\n                </div>\r\n              </a>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-2\"></div>\r\n        <div class=\"col-md-4\">\r\n          <div class=\"box-sentence-price-wrapper\">\r\n            <div class=\"box-sentence-wrapper\">\r\n              <a href=\"/bus.html\">\r\n                <div class=\"box-sentence\">\r\n                  <div class=\"box-sentence__wrapper-images\">\r\n                    <div class=\"box-sentence__images\">\r\n                      <img src=\"img/sentence__3.svg\" alt=\"\">\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"title box-sentence__title\">\r\n                    <h3 class=\"title__upper\">Інтернет для яхт</h3>\r\n                  </div>\r\n                  <div class=\"box-sentence__price\">\r\n                    <span>Ціна</span>\r\n                    <span>21 000 грн</span>\r\n                  </div>\r\n                  <div class=\"box-sentence__button\">\r\n                    <button class=\"btn btn-branded btn-medium\">Детальніше</button>\r\n                  </div>\r\n                </div>\r\n              </a>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-4\">\r\n          <div class=\"box-sentence-price-wrapper\">\r\n            <div class=\"box-sentence-wrapper\">\r\n              <a href=\"/bus.html\">\r\n                <div class=\"box-sentence\">\r\n                  <div class=\"box-sentence__wrapper-images\">\r\n                    <div class=\"box-sentence__images\">\r\n                      <img src=\"img/sentence__4.svg\" alt=\"\">\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"title box-sentence__title\">\r\n                    <h3 class=\"title__upper\">Інтернет для вантажоперевезень</h3>\r\n                  </div>\r\n                  <div class=\"box-sentence__price\">\r\n                    <span>Ціна</span>\r\n                    <span>18 000 грн</span>\r\n                  </div>\r\n                  <div class=\"box-sentence__button\">\r\n                    <button class=\"btn btn-branded btn-medium\">Детальніше</button>\r\n                  </div>\r\n                </div>\r\n              </a>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-2\"></div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n[[$order]]\r\n[[$feedback]]\r\n[[$partners]]', 1, 1, 3, 1, 1, 1, 1560078696, 1, 1560970502, 0, 0, 0, 1560970502, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'price', 0, 0, 1, NULL),
(5, 'document', 'text/html', 'Контакти', 'Контакти', '', 'contact', 1, '', 1, 0, 0, 0, 0, '', '<section class=\"section section-top section-top-page\">\r\n    <div class=\"container\">\r\n      <h1>Контакти</h1>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-9\">\r\n          <div class=\"title text-left\">\r\n            <h2 class=\"title__upper\">Як ми можемо вам допомогти?</h2>\r\n            <p class=\"title__description\">Розкажіть нам трохи про те, що вас цікавить, і ми відразу зв\'яжемося.</p>\r\n          </div>\r\n\r\n          <div class=\"main-form\">\r\n  <form action=\"\" class=\"form\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6\">\r\n          <input class=\"input\" type=\"text\" value placeholder=\"Ім\'я\" name=\"firstname\">\r\n          <input class=\"input\" type=\"text\" value placeholder=\"Email\" name=\"email\">\r\n        </div>\r\n        <div class=\"col-md-6\">\r\n          <input class=\"input\" type=\"text\" value placeholder=\"Прізвище\" name=\"lastname\">\r\n          <select name=\"decision_choice\" id=\"decisionChoice\">\r\n            <option value>Тип продукту</option>\r\n            <option value=\"Інтернет для автобусів\">Інтернет для автобусів</option>\r\n            <option value=\"Інтернет для авто\">Інтернет для авто</option>\r\n            <option value=\"Інтернет для громадського транспорту\">Інтернет для громадського транспорту\r\n            </option>\r\n            <option value=\"Інтернет для вантажоперевезень\">Інтернет для вантажоперевезень</option>\r\n            <option value=\"Інтернет для яхт і кораблів\">Інтернет для яхт і кораблів</option>\r\n            <option value=\"Медіасервер (MediaBot)\">Медіасервер (MediaBot)</option>\r\n          </select>\r\n        </div>\r\n        <div class=\"col-md-12\">\r\n          <textarea name=\"tell_us_about_your_mobile_connectivity_needs\"\r\n            id=\"tell_us_about_your_mobile_connectivity_needs\"\r\n            placeholder=\"Розкажіть нам про свої потреби у мобільному зв\'язку\" cols=\"30\" rows=\"10\"></textarea>\r\n          <button class=\"btn btn-dark btn-medium btn-center\">Відправити запит</button>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </form>\r\n</div>\r\n\r\n          <div class=\"content top-line-xl\">\r\n            <div class=\"title text-left\">\r\n              <h2 class=\"title__upper\">Техпідтримка і гарантії</h2>\r\n            </div>\r\n            <p>Телефон <a href=\"tel:+38 (067) 623-25-08\">+38 (067) 623-25-08</a> (00:00am - 24:00am).</p>\r\n            <p>Ми надаємо обладнання на 30 днів безкоштовно! Якщо ви придбали у нас пристрій і з якихось причин воно вам\r\n              не підійшло ви можете повернути його протягом місяця. При цьому, ви отримаєте всі витрачені гроші без\r\n              будь-яких розглядів і паперової тяганини.</p>\r\n            <p>Компанія Faywi надає гарантію до 48 місяців на все обладнання! 24-х місячна гарантія є обов\'язковою для\r\n              кожного товару і надається безкоштовно. Також, у вас є можливість продовжити гарантійний термін\r\n              обслуговування пристрою до 36 або 48 місяців. Вартість гарантії складе 100 грн. на 3 роки і 200 грн. - на\r\n              4 роки. Гарантія вступає в силу з моменту придбання обладнання. Все обладнання перед передачею клієнтові\r\n              проходить контроль на працездатність, а при відправці транспортними компаніями ще і страхується на повну\r\n              вартість. Таким чином, у Вас є гарантія цілісності і працездатності одержуваного товару. Разом з товаром\r\n              Ви отримуєте гарантійний талон із зазначенням найменування товару, серійного номера, кількості і дати\r\n              покупки. Гарантійний талон є документом, на підставі якого Ви можете звернутися в компанію Faywi і\r\n              зажадати усунення недоліків (якщо обладнання знаходиться на гарантії).</p>\r\n            <p>Заміна обладнання проводиться протягом 30-ти днів з моменту покупки. Ремонт протягом всього терміну\r\n              гарантії. Повернення коштів здійснюється протягом 3-х днів.</p>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-3\">\r\n          <div class=\"contact-widget-wrapper top-line-md\">\r\n            <img src=\"img/headquarters.jpg\" alt=\"headquarters\">\r\n            <h5>Штаб-квартира:</h5>\r\n            <p>Faywi Inc.,<br>Україна, м Київ, <br> вул. Богдана Хмельницького, 67</p>\r\n            <h5>Региональные офисы:</h5>\r\n            <div class=\"contact-widget-wrapper__list\">\r\n              <ul class=\"contact-widget-wrapper__list-item list-ui\">\r\n                <li>Варшава</li>\r\n                <li>Прага</li>\r\n                <li>Київ</li>\r\n                <li>Харків</li>\r\n              </ul>\r\n              <ul class=\"contact-widget-wrapper__list-item list-ui\">\r\n                <li>Одеса</li>\r\n                <li>Львів</li>\r\n                <li>Вінниця</li>\r\n                <li>Дніпро</li>\r\n              </ul>\r\n            </div>\r\n            <h5>Online консультація:</h5>\r\n            <a href=\"tel:+38 (050) 424-31-10\">+38 (050) 424-31-10</a>\r\n            <a href=\"tel:+38 (063) 325-28-35\">+38 (063) 325-28-35</a>\r\n            <h5>Технічна підтримка:</h5>\r\n            <a href=\"tel:+38 (067) 623-25-08\">+38 (067) 623-25-08</a>\r\n            <a href=\"mailto:info@Faywi.net\">info@Faywi.net</a>\r\n            <h5>Для запитів продажів:</h5>\r\n            <a href=\"mailto:sales@Faywi.net\">sales@Faywi.net</a>\r\n            <h5>Для преси:</h5>\r\n            <a href=\"mailto:info@Faywi.net\">pr@Faywi.net</a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n[[$partners]]', 1, 1, 4, 1, 1, 1, 1560078716, 1, 1560970819, 0, 0, 0, 1560970740, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'contact', 0, 0, 1, NULL),
(6, 'document', 'text/html', 'Інтернет для автобусів', 'Інтернет для автобусів', '', 'bus', 1, '', 1, 0, 0, 2, 0, '', '<section class=\"section section-top section-top-page\">\r\n    <div class=\"container\">\r\n      <h1>Інтернет для автобусів</h1>\r\n    </div>\r\n  </section>\r\n\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <div class=\"title\">\r\n            <h2 class=\"title__upper\">Стабільний інтернет для туристичних автобусів</h2>\r\n          </div>\r\n          <p>Розроблене нами рішення забезпечує високошвидкісний інтернет в міжміських туристичних автобусах.</p>\r\n        </div>\r\n        <div class=\"col-md-6\">\r\n          <div class=\"services-main-img\">\r\n            <img\r\n              src=\"https://static1.squarespace.com/static/54248d74e4b080907cee516a/5b29b549758d466e7e7e4c96/5b3553a6758d46d1dc8db440/1530221482761/bus_volvo_by_stonehengeindia-danwzbx.png?format=1000w\"\r\n              alt=\"\">\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content section-ui\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <img src=\"/img/main-photo__3.jpg\" alt=\"\">\r\n        </div>\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <h2>Ваша конкурентна перевага</h2>\r\n          <p>Небагато компаній-перевізники можуть надати такий додатковий сервіс, як стабільний інтернет, але для\r\n            клієнтів це важливий фактор вибору. Під час поїздки вони оцінять інтернет зі швидкістю до 100 Мбіт / сек, з\r\n            яким можна дивитися потокове відео, спілкуватися в месенджерах і користуватися мобільними додатками без\r\n            обмежень. </p>\r\n          <h2>Інтернету вистачить на всіх</h2>\r\n          <p>До Wi-Fi-мережі в автобусі може підключатися одночасно до 200 пристроїв. Агрегація каналів двох і більше\r\n            операторів зв\'язку значно збільшує пропускну здатність і зону безперебійного підключення до інтернету.\r\n          </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <div class=\"title\">\r\n            <h2 class=\"title__upper\">Розроблено спеціально для туристичних автобусів</h2>\r\n          </div>\r\n          <p>Ми спеціалізуємося на інтернет-рішеннях для транспорту і знаємо всі особливості «інтернету в русі».</p>\r\n          <p>Коли зона покриття одного оператора закінчується, наше рішення Faywi Vi2-BUS продовжує працювати\r\n            використовуючи потужності другого оператора. Таким чином, пасажири продовжують користуватися якісним і\r\n            безперебійним інтернетом.</p>\r\n        </div>\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <div class=\"drawing-img\">\r\n            <img src=\"https://incarnet.ru/wp-content/themes/incarnet//img/solution/img_tourism_shema.png\" alt=\"\">\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n[[$order]]\r\n[[$feedback]]\r\n[[$partners]]', 1, 1, 0, 1, 1, 1, 1560971076, 1, 1560971583, 0, 0, 0, 1560971040, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'services/bus', 0, 0, 1, NULL),
(7, 'document', 'text/html', 'Інтернет для авто', 'Інтернет для авто', '', 'car', 1, '', 1, 0, 0, 2, 0, '', '\r\n  <section class=\"section section-top section-top-page\">\r\n    <div class=\"container\">\r\n      <h1>Інтернет для авто</h1>\r\n    </div>\r\n  </section>\r\n\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <div class=\"title\">\r\n            <h2 class=\"title__upper\">До сотні в секунду</h2>\r\n          </div>\r\n          <p>Створене нами рішення Faywi ViX гарантує вам стабільний високошвидкісний інтернет в автомобілі.</p>\r\n          <p>На відміну від звичайного модему або телефону, з Faywi ViX ви будете впевнені в тому, що важливий\r\n            онлайн-дзвінок не буде зірваний, фільм не зависне на цікавому моменті, а інтернет не пропаде раптово при\r\n            виїзді на швидкісне шосе.</p>\r\n        </div>\r\n        <div class=\"col-md-6\">\r\n          <div class=\"services-main-img\">\r\n            <img src=\"https://avatars.mds.yandex.net/get-pdb/49816/19207f28-f660-43bb-b830-f6e7b8d8b324/s1200\" alt=\"\">\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content section-ui\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <img src=\"/img/main-photo__5.jpg\" alt=\"\">\r\n        </div>\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <h2>Стабільний інтернет в автомобілі до 100 мб / сек</h2>\r\n          <p>Така швидкість з\'єднання дозволяє декільком користувачам дивитися потокове відео, грати в онлайн-ігри,\r\n            завантажувати об\'ємні файли і проводити відеоконференції. Якість зв\'язку аналогічно звичайному провідного\r\n            інтернету вдома або в офісі.</p>\r\n          <h2>Сигнал без збоїв на швидкості до 200 км / год</h2>\r\n          <p>Стабільне підключення в русі не просте завдання. Наш пристрій вирішує цю проблему, зберігаючи стабільне\r\n            з\'єднання в дорозі там, де звичайні мобільні пристрої не справляються. Маршрутизатор Faywi успішно\r\n            експлуатується навіть на високошвидкісних поїздах, які розвивають швидкість до 250 км / ч.\r\n          </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <div class=\"title\">\r\n            <h2 class=\"title__upper\">Розроблено спеціально для автомобілів</h2>\r\n          </div>\r\n          <p>Ми спеціалізуємося на інтернет-рішеннях для транспорту і знаємо всі тонкощі і особливості «інтернету в\r\n            русі».</p>\r\n          <p>Faywi ViX створений спеціально для автомобілів все обладнання проходить кліматичне тестування і\r\n            перевірку на вібростенді - йому не страшні температурні перепади і тряска в дорозі, а також висока швидкість\r\n            руху.</p>\r\n        </div>\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <div class=\"drawing-img\">\r\n            <img src=\"https://incarnet.ru/wp-content/themes/incarnet/img/solution/img_car_sheme.png\" alt=\"\">\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n[[$order]]\r\n[[$feedback]]\r\n[[$partners]]', 1, 1, 1, 1, 1, 1, 1560971684, 1, 1560971921, 0, 0, 0, 1560971640, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'services/car', 0, 0, 1, NULL),
(8, 'document', 'text/html', 'Інтернет для громадського транспорту', 'Інтернет для громадського транспорту', '', 'public-transport', 1, '', 1, 0, 0, 2, 0, '', '<section class=\"section section-top section-top-page\">\r\n    <div class=\"container\">\r\n      <h1>Інтернет для громадського транспорту</h1>\r\n    </div>\r\n  </section>\r\n\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <div class=\"title\">\r\n            <h2 class=\"title__upper\">Стабільний інтернет в громадському транспорті</h2>\r\n          </div>\r\n          <p>Створене нами рішення Faywi Vi2-BUS забезпечує стабільний високошвидкісний інтернет в автобусах,\r\n            трамваях і тролейбусах.</p>\r\n        </div>\r\n        <div class=\"col-md-6\">\r\n          <div class=\"services-main-img\">\r\n            <img src=\"https://incarnet.ru/wp-content/uploads/2017/11/img_social.png\" alt=\"\">\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content section-ui\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <img src=\"/img/main-photo__2.jpg\" alt=\"\">\r\n        </div>\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <h2>Якісний громадський Wi-Fi</h2>\r\n          <p>Агрегація каналів двох і більше операторів зв\'язку значно збільшує пропускну здатність і зону\r\n            безперебійного підключення до інтернету. Навіть в годину пік пасажири можуть підключитися до мережі, що не\r\n            переживаючи за якість з\'єднання.</p>\r\n          <h2>Інтернет в русі зі швидкістю до 100 Мбіт / с</h2>\r\n          <p>Швидкість з\'єднання дозволяє дивитися потокове відео, швидко завантажувати файли і користуватися мобільними\r\n            додатками. Інтернет буде стабільно працювати навіть в умовах тряски і вібрації транспорту.</p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <div class=\"title\">\r\n            <h2 class=\"title__upper\">Розроблено спеціально для громадського транспорту</h2>\r\n          </div>\r\n          <p>Устаткування пройшло всі необхідні перевірки, його установка офіційно узгоджена з російськими та\r\n            зарубіжними заводами-виробниками транспортних засобів.</p>\r\n          <p>У нас є досвід масових установок - більше 8000 автобусів, трамваїв і тролейбусів оснащено роутерами\r\n            Faywi Vi2-BUS. Тому ми гарантуємо справну роботу наших пристроїв і якісний монтаж.</p>\r\n          <p>Стабильный интернет нужен как пассажирам, так и работникам общественного транспорта. Мы продумали все\r\n            возможности, которые дает вам установка нашего решения.</p>\r\n        </div>\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <div class=\"drawing-img\">\r\n            <img src=\"https://incarnet.ru/wp-content/themes/incarnet/img/solution/img_social_shema.png\" alt=\"\">\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n[[$order]]\r\n[[$feedback]]\r\n[[$partners]]', 1, 1, 2, 1, 1, 1, 1560971818, 1, 1560971914, 0, 0, 0, 1560971760, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'services/public-transport', 0, 0, 1, NULL),
(9, 'document', 'text/html', 'Інтернет для яхт', 'Інтернет для яхт', '', 'yachts', 1, '', 1, 0, 0, 2, 0, '', '<section class=\"section section-top section-top-page\">\r\n    <div class=\"container\">\r\n      <h1>Інтернет для яхт</h1>\r\n    </div>\r\n  </section>\r\n\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <div class=\"title\">\r\n            <h2 class=\"title__upper\">Якісний інтернет на яхті</h2>\r\n          </div>\r\n          <p>Створене нами рішення для яхт забезпечує високошвидкісний доступ в інтернет, який не підведе у відкритому морі.</p>\r\n        </div>\r\n        <div class=\"col-md-6\">\r\n          <div class=\"services-main-img\">\r\n            <img\r\n              src=\"https://incarnet.ru/wp-content/uploads/2017/11/img_yachts.png\"\r\n              alt=\"\">\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content section-ui\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <img src=\"/img/main-photo__4.jpg\" alt=\"\">\r\n        </div>\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <h2>Безперебійний інтернет\r\n            </h2>\r\n          <p>Ви будете на зв\'язку на відстані до 30 км від берега, далі можна переключитися на супутниковий інтернет. У разі відключення стаціонарного електроживлення, інтернет буде працювати ще кілька годин від джерела безперебійного живлення, який йде в комплекті.</p>\r\n          <h2>Розваги на яхті зі швидкістю до 100 Мбіт / с</h2>\r\n          <p>Наше рішення забезпечує доступ до інтернету без затримок по 3G / 4G-каналах декількох стільникових операторів. Швидкості достатньо для інтернет-телебачення, онлайн-ігор, мобільних додатків і соціальних мереж без обмежень.\r\n          </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <div class=\"title\">\r\n            <h2 class=\"title__upper\">Розроблено спеціально для яхт</h2>\r\n          </div>\r\n          <p>Ми знаємо, що в море не так багато способів вийти на зв\'язок: через супутник, односімочний 3G-модем і ADSL в порту на заправці.</p>\r\n          <p>Всі вони вимагають значних витрат і при цьому не завжди надійні. Ми врахували їх недоліки та розробили власне рішення Faywi DeffX, яке гарантує вам якісний інтернет і при цьому справно працює в плаванні - в умовах качки, підвищеної вологості та різких перепадів температур.</p>\r\n        </div>\r\n        <div class=\"col-md-6 align-self-center\">\r\n          <div class=\"drawing-img\">\r\n            <img src=\"https://incarnet.ru/wp-content/themes/incarnet/img/solution/img_yachts_shema.png\" alt=\"\">\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </section>\r\n', 1, 1, 3, 1, 1, 1, 1560971874, 1, 1560971905, 0, 0, 0, 1560971820, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'services/yachts', 0, 0, 1, NULL),
(10, 'document', 'text/html', 'Політика конфіденційності', 'Політика конфіденційності', '', 'privacy-policy', 1, '', 1, 0, 0, 3, 0, '', '\r\n  <section class=\"section section-top section-top-page\">\r\n    <div class=\"container\">\r\n      <h1>Політика конфіденційності</h1>\r\n    </div>\r\n  </section>\r\n\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"title text-left\">\r\n        <h2 class=\"title__upper\">ВСТУП</h2>\r\n      </div>\r\n      <p>Ласкаво просимо до політики конфіденційності Faywi. Тут ми пояснюємо, яким чином Faywi використовує особисту\r\n        інформацію. Ця політика стосується веб-сайту Faywi.com, веб-сайту Arterramobility.com та будь-якого іншого\r\n        веб-сайту Faywi, який вказує, що він підпадає під дію цієї політики конфіденційності.\r\n\r\n      </p>\r\n      <p>Ця політика конфіденційності застосовується до інформації, зібраної з та після дати останнього оновлення цієї\r\n        політики. Якщо інформація, зібрана від вас, підпадала під дію попередньої політики конфіденційності, ми\r\n        продовжуватимемо розглядати раніше зібрану інформацію відповідно до застосовуваної раніше політики\r\n        конфіденційності. Раніше можна ознайомитися з політикою конфіденційності.\r\n\r\n        Faywi застосовує власну політику щодо безпеки та безпеки даних користувачів послуги Faywi.\r\n\r\n      </p>\r\n      <p>Ось деякі інші важливі речі:</p>\r\n      <p>\r\n\r\n        Faywi не збирає більше особистої інформації від дітей віком до 13 років, ніж це обґрунтовано необхідно для\r\n        участі в наданих послугах.\r\n        Незважаючи на те, що дорослий клієнт може дозволити неповнолітньому скористатися обліковим записом дорослого або\r\n        пристроєм для дорослих (наприклад, мобільних телефонів), які мають доступ до його чи її облікового запису, лише\r\n        дорослий має право створювати обліковий запис і керувати ним. Коли ви створюєте обліковий запис у Faywi, ми\r\n        вимагаємо адресу електронної пошти від дорослого 18-річного віку, щоб встановити послугу, і може надіслати вам\r\n        маркетингові електронні листи про нові продукти або рекламні акції Faywi. Хоча ми сподіваємося, що ці\r\n        повідомлення будуть корисними, ми надаємо можливість відмовитися від їх отримання, скасувавши підписку\r\n        безпосередньо з системи доставки електронної пошти або змінивши налаштування профілю входу на Faywi.com.\r\n         \r\n      </p>\r\n      <p>Коли ви створюєте обліковий запис у Faywi, ми також надаємо вам можливість отримувати пропозиції від компаній,\r\n        які, на нашу думку, можуть вас зацікавити (ви повинні \"вибрати\", щоб отримати ці конкретні пропозиції). Ми\r\n        дозволяємо вам окремо вибирати, яка інформація буде надіслана до дорослого власника облікового запису, а також\r\n        яку інформацію буде надіслано неповнолітньому, уповноваженому дорослою особою використовувати цей обліковий\r\n        запис. Навіть якщо ви вирішите приймати пропозиції, ви можете змінити свою думку в будь-який час і не приймати\r\n        їх пізніше.\r\n        Будь ласка, запиши. Коли ми говоримо \"ви\" або \"наші клієнти\" в цьому документі, ми говоримо про вас як про\r\n        користувача нашого веб-сайту або про послуги (включаючи будь-яку роль, яку ви можете мати як батьки або\r\n        законного опікуна), а також будь-які незначні хто використовує веб-сайти або служби Faywi з вашого дозволу.\r\n\r\n         \r\n        Нижче наведено більш важливу інформацію про нашу політику конфіденційності. Ми ставимося до конфіденційності\r\n        вашої інформації дуже серйозно, але ніхто не повинен сприймати це більш серйозно, ніж ви. Якщо у вас виникли\r\n        питання, є спосіб зв\'язатися з нами в кінці цього документа.</p>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content section-light-gray\">\r\n    <div class=\"container\">\r\n      <div class=\"title text-left\">\r\n        <h2 class=\"title__upper\">ЩО ТАКЕ ПОЛІТИКА КОНФІДЕНЦІЙНОСТІ</h2>\r\n      </div>\r\n      <p>Ця політика конфіденційності пояснює, як Faywi обробляє особисту інформацію, яку Faywi збирає та отримує.\r\n        Персональна інформація - це інформація про наших клієнтів, яка може ідентифікувати їх, наприклад, ім\'я, адресу,\r\n        адресу електронної пошти або номер телефону.\r\n\r\n      </p>\r\n      <p>Для клієнтів, які підписалися на наші голосові телефонні послуги, ця політика також застосовується до\r\n        використання нашою галуззю назвою \"Клієнтська мережна інформація\" (CPNI). CPNI включає в себе тривалість\r\n        дзвінків, телефонні номери, які дзвонять клієнти, та подібну інформацію. CPNI не включає в себе особисту\r\n        інформацію, таку як ім\'я, номер телефону та адреса електронної пошти.</p>\r\n      <p>Ця політика не поширюється на практику компаній, які Faywi не володіє або контролює, або до людей, які Faywi не\r\n        використовує або керує. Однак, коли Faywi використовує компанії, агенти, підрядники або інші треті сторони для\r\n        виконання послуг від свого імені, Faywi вимагає, щоб вони захищали CPNI та особисту інформацію, що відповідає\r\n        цій політиці.</p>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"title text-left\">\r\n        <h2 class=\"title__upper\">Чому ми збираємо інформацію</h2>\r\n      </div>\r\n      <p>Ми збираємо інформацію, яка допомагає Faywi надавати послуги нашим клієнтам. До них належать послуги\r\n        розробників програмного забезпечення третіх сторін, видавців і постачальників послуг, з якими ми співпрацюємо.\r\n        Ми також можемо використовувати цю інформацію для захисту клієнтів, працівників і власності від шахрайства,\r\n        крадіжки або зловживань, проведення опитувань і підтримки хороших відносин з клієнтами. Інформація, яку ми\r\n        збираємо, допомагає нам покращити та інформувати вас про нові послуги та продукти.</p>\r\n    </div>\r\n  </section>', 1, 1, 0, 1, 1, 1, 1560972023, 1, 1560972403, 0, 0, 0, 1560972000, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'about-us/privacy-policy', 0, 0, 1, NULL),
(11, 'document', 'text/html', 'Політика чесного використання', 'Політика чесного використання', '', 'fair-use-policy', 1, '', 1, 0, 0, 3, 0, '', ' <section class=\"section section-top section-top-page\">\r\n    <div class=\"container\">\r\n      <h1>Політика чесного використання</h1>\r\n    </div>\r\n  </section>\r\n\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"title text-left\">\r\n        <h2 class=\"title__upper\">Faywi КОМПЛЕКСНА ОСВІТЛЕННЯ BROADBAND ™</h2>\r\n      </div>\r\n      <p>Faywi надає мобільний освітній широкосмуговий зв\'язок для студентів у будь-який час і в будь-якому місці, де\r\n        вони навчаються. Ми прагнемо зробити це рішення доступним, щоб ми могли з\'єднати якомога більше студентів з\r\n        обмеженими можливостями в межах обмежених бюджетів. Таким чином, Education Broadband призначений для блокування\r\n        невідповідного контенту та мінімізації не-освітніх заходів, які споживають пропускну здатність і збільшують\r\n        витрати на всю систему. Школа або район не обмежується пропускною спроможністю для навчальних сайтів.\r\n\r\n      </p>\r\n      <p>Faywi працює зі школами та округами, щоб забезпечити будь-який сайт, необхідний для успіху студента, і законно\r\n        використаний для освіти. Наша політика справедливого використання часто адаптується з розвитком Інтернету,\r\n        з\'являються нові протоколи, а нові програми представляють загрози або відволікання.</p>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content section-light-gray\">\r\n    <div class=\"container\">\r\n      <div class=\"title text-left\">\r\n        <h2 class=\"title__upper\">1662/5000\r\n          ЗМІСТ СОЦІАЛЬНИХ МЕДІЙ, YOUTUBE, І ПОСИЛЕННЯ</h2>\r\n      </div>\r\n      <p>Згідно з недавнім звітом від постачальника мереж Ericsson, а також звіт про мобільність, дві третини трафіку\r\n        даних на мобільних мережах надходять від Facebook (16%), YouTube (15%), Netflix (12%), Instagram (9%), і\r\n        SnapChat (9%). У Faywi, наш досвід показав, що YouTube, сайти соціальних медіа та сайти додатків можуть\r\n        становити до 90% студентів, що споживають нефільтровані бездротові дані.\r\n\r\n      </p>\r\n      <p>Оскільки послуги широкосмугового освіти оплачує школа або район, вона розроблена таким чином, щоб дозволити\r\n        студентам отримати доступ до інструментів для навчання, але приборкати природне спокуса, щоб SmartSpot і\r\n        широкосмуговий доступ стали їх джерелом для телевізійних шоу, ігор, соціальних мереж і відео чат.\r\n\r\n      </p>\r\n      <p> YouTube - це загальнодоступний форум з набагато більшим невідповідним і невідповідним вмістом, ніж навчальний.\r\n        Як наслідок, налаштування за промовчанням за освітніми широкополосними блокуваннями YouTube та іншим потоковим\r\n        мультимедійним вмістом, за винятком тих відео, які були позначені як навчальні.\r\n\r\n      </p>\r\n      <p>Ми хочемо докласти всіх зусиль для того, щоб студенти мали змогу отримати доступ до необхідного для них\r\n        освітнього медіа без порушення. Освіта Широкосмуговий доступ дозволяє отримати доступ до більш ніж 500 000\r\n        навчальних відеозаписів через потокові сайти, такі як: SchoolTube ™, TeacherTube ™, Khan Academy ™, PBS ™,\r\n        Discovery Education ™ і TED ™. Для тих районів, які бажають запропонувати своїм студентам нефільтрований доступ\r\n        до YouTube, Faywi пропонує додатковий план, щоб дозволити такий доступ.\r\n\r\n      </p>\r\n    </div>\r\n  </section>\r\n', 1, 1, 1, 1, 1, 1, 1560972068, 0, 0, 0, 0, 0, 1560972068, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'about-us/fair-use-policy', 0, 0, 1, NULL);
INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `alias_visible`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(12, 'document', 'text/html', 'Умови обслуговування', 'Умови обслуговування', '', 'terms-of-services', 1, '', 1, 0, 0, 3, 0, '', '\r\n  <section class=\"section section-top section-top-page\">\r\n    <div class=\"container\">\r\n      <h1>Умови обслуговування</h1>\r\n    </div>\r\n  </section>\r\n\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"title text-left\">\r\n        <h2 class=\"title__upper\">ЗАГАЛЬНІ</h2>\r\n      </div>\r\n      <p>Faywi, Inc (\"Faywi\", \"ми\", \"наш\" і \"нас\") є постачальником певних мобільних пристроїв (таких як мобільні телефони) і стільникових телефонів і послуг передачі даних, а також супутніх послуг, включаючи послуги, дозволяють клієнтам керувати та контролювати використання пристроїв і послуг Faywi особами, якими вони дозволяють використовувати ці пристрої (спільно, \"Служби\" Kajeet). Наприклад, деякі служби Faywi дозволяють батькам контролювати використання мобільних пристроїв Faywi (наприклад, телефонів), які вони надають своїм неповнолітнім дітям, а інші служби Faywi дозволяють роботодавцям керувати численними мобільними пристроями Faywi, які вони видають своїм співробітникам. Послуги Faywi включають послуги, що пропонуються під брендом \"Faywi\" і \"Faywi for Education ™\". Faywi може також пропонувати додаткові або різні послуги час від часу. Цей документ, названий \"Умови надання послуг\" (\"Умови\"), визначає умови та умови, за яких Faywi надає доступ до будь-якої з Послуг, які Ви купуєте з неї. Отримавши доступ або скориставшись Послугами, Ви визнаєте, що прочитали та зрозуміли ці Умови.\r\n\r\n          Ці Умови є обов\'язковою угодою між Faywi та вами, і ви погоджуєтеся дотримуватися цих Умов. Ви розумієте та погоджуєтеся з тим, що ви або організація (и), від імені яких ви погоджуєтеся з цими Умовами, несуть відповідальність і відповідальність за всі дії та бездіяльність третіх сторін (наприклад, неповнолітніх, службовців), яким ви надаєте дозвіл на доступ або використання Послуги (кожен, \"кінцевий користувач\"), і ви несете відповідальність і відповідальність за їх суворе дотримання цих Умов. Посилання на \"Ви\" або \"Ваше\" користування Послугами застосовуються до кінцевого користувача та їх використання Службами таким же чином. Ви визнаєте та погоджуєтеся, що Faywi може заборонити доступ до Служб для будь-якого кінцевого користувача, який не відповідає цим Умовам. Погоджуючись з цими Умовами та / або користуючись Послугами, ви заявляєте, що вам не менше 18 років і є резидентом Сполучених Штатів. Якщо ви не згодні з будь-яким із цих Умов, ви не маєте права на доступ або користування Службами.\r\n          \r\n          Ці Умови надання послуг були опубліковані 8 серпня 2012 року і набудуть чинності 7 вересня 2012 року. До 7 вересня 2012 року правила користування послугою можна знайти тут. Доступ або користування Послугами в будь-який час з 7 вересня або пізніше, ви погоджуєтеся з цими Умовами.\r\n          \r\n          Якщо у вас виникли питання щодо цих Загальних положень та умов, будь ласка, звертайтеся до нас за адресою kajeet.com або зв\'яжіться з нами тут.</p>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content section-light-gray\">\r\n    <div class=\"container\">\r\n      <div class=\"title text-left\">\r\n        <h2 class=\"title__upper\">ЕКСКЛЮЗИВНЕ ВИКОРИСТАННЯ ПРИСТРОЮ З ПОСЛУГАМИ Faywi; ДЕЯКІ ОБМЕЖЕННЯ НА ВИКОРИСТАННЯ</h2>\r\n      </div>\r\n      <p>Кожен телефон або інший пристрій, проданий будь-якому кінцевому користувачеві або до вас, містить вбудоване програмне забезпечення, яке є власністю компанії Faywi і має ліцензію, не продається. Faywi надає власнику кожного пристрою Faywi обмежену, невиключну ліцензію на використання цього програмного забезпечення виключно як вбудовані в пристрій, лише в форматі об\'єктного коду і виключно для використання з Послугами, доки ви маєте право користуватися Службами . Як умова цієї ліцензії, ви не можете втручатися або змінювати будь-яке обладнання або програмне забезпечення на мобільному пристрої Faywi, експортувати цей мобільний пристрій з США, придбати цей мобільний пристрій для перепродажу будь-якому третій стороні або допомогти іншому займатися такою діяльністю. Ви визнаєте, що порушення окремих положень цього пункту порушує майнові права Faywi і його ліцензіарів і може порушувати державні і федеральні закони. Faywi залишає за собою право переслідувати порушників у повному обсязі закону.</p>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"title text-left\">\r\n        <h2 class=\"title__upper\">БЕЗПЕКА</h2>\r\n      </div>\r\n      <p>Щоб захистити свої особисті дані, Faywi вимагає пароль для будь-якого доступу, змін або обслуговування вашого облікового запису. Ви визнаєте, що ви несете відповідальність за всі дії, що відбуваються з використанням вашого пароля. Рекомендується не розголошувати пароль третім особам, і ви повинні негайно зв\'язатися з нами (натисніть тут), якщо ви вважаєте, що ваш пароль був скомпрометований.\r\n\r\n          Зверніть увагу, що Faywi не буде безпосередньо здійснювати дзвінки на номери 1-900, номери 1-976 та інші подібні послуги.\r\n          \r\n          Хоча ми докладаємо всіх зусиль, щоб захистити наших клієнтів від неналежного розкриття конфіденційної та особистої інформації, а також забезпечити нашим користувачам безпечне мережеве середовище, ви визнаєте, що, незважаючи на наші зусилля, ми не можемо гарантувати, що всі комунікації та особиста інформація залишатимуться безпечними. Faywi не несе відповідальності за порушення безпеки, що відбуваються, незважаючи на звичайні та розумні процедури безпеки.</p>\r\n    </div>\r\n  </section>\r\n', 1, 1, 2, 1, 1, 1, 1560972153, 0, 0, 0, 0, 0, 1560972153, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'about-us/terms-of-services', 0, 0, 1, NULL),
(13, 'document', 'text/html', 'Умови використання сайту', 'Умови використання сайту', '', 'terms-of-use', 1, '', 1, 0, 0, 3, 0, '', ' <section class=\"section section-top section-top-page\">\r\n    <div class=\"container\">\r\n      <h1>Умови використання сайту</h1>\r\n    </div>\r\n  </section>\r\n\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"title text-left\">\r\n        <h2 class=\"title__upper\">ВСТУП\r\n        </h2>\r\n      </div>\r\n      <p>Положення цього документа утворюють угоду між Faywi, Inc. (\"Faywi\", \"ми\", \"наш\" або \"нас\") і вами. Наступні\r\n        умови застосовуються до Вашого використання та доступу до будь-якого веб-сайту, який є власністю або керованим\r\n        Faywi та / або його філією (ами), і який містить повідомлення про те, що воно відповідає цим умовам. Усі\r\n        положення цього документа можуть називатися \"Умовами використання\" Faywi, а будь-який веб-сайт, який підпадає\r\n        під ці Умови використання, може називатися \"Веб-сайт Faywi\" або \"наш веб-сайт\". користуючись веб-сайтом Faywi,\r\n        ви погоджуєтеся з Умовами використання. Якщо ви не згодні прийняти та дотримуватись Умов використання, ви не\r\n        маєте права на доступ або використання нашого веб-сайту.</p>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content section-light-gray\">\r\n    <div class=\"container\">\r\n      <div class=\"title text-left\">\r\n        <h2 class=\"title__upper\">ПОЛІТИКА КОНФІДЕНЦІЙНОСТІ\r\n        </h2>\r\n      </div>\r\n      <p>Положення нашої Політики конфіденційності також є невід\'ємною частиною цих Умов використання. Ви можете\r\n        переглянути політику конфіденційності Faywi, натиснувши тут. Отримавши доступ або використовуючи веб-сайт\r\n        Faywi, ви також визнаєте, що ви прочитали нашу Політику конфіденційності і що ви погоджуєтеся, що ми можемо\r\n        збирати, використовувати і розкривати інформацію, як описано в ній.</p>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content\">\r\n    <div class=\"container\">\r\n      <div class=\"title text-left\">\r\n        <h2 class=\"title__upper\">ДОДАТКОВІ УМОВИ</h2>\r\n      </div>\r\n      <p>Крім того, деякі функції веб-сайту Faywi та певних продуктів або послуг, що пропонуються через веб-сайт\r\n        Faywi, можуть підлягати додатковим умовам використання. Користуючись такими функціями, продуктами або послугами\r\n        або будь-якою їх частиною, ви погоджуєтеся застосовувати додаткові умови використання. У разі, якщо будь-який з\r\n        додаткових умов використання, що регулюють такі функції, продукти або послуги, конфліктує з цими Умовами або\r\n        Користуванням, регулюються додаткові умови.</p>\r\n    </div>\r\n  </section>\r\n\r\n  <section class=\"section section-content section-light-gray\">\r\n    <div class=\"container\">\r\n      <div class=\"title text-left\">\r\n        <h2 class=\"title__upper\">ПОСИЛАННЯ НА САЙТИ ТРЕТІХ СТОРІН\r\n        </h2>\r\n      </div>\r\n      <p>Веб-сайт може містити посилання на інші веб-сайти, які підтримуються третіми сторонами. Ці посилання надані\r\n        лише для зручності. Faywi не спонсорує, не підтримує, не здійснює контролю над будь-якими веб-сайтами, їхніми\r\n        операторами або змістом, продуктами або послугами, які вони надають, або не надає жодних заяв або гарантій.\r\n        Faywi не несе відповідальності та не несе відповідальності за поведінку операторів цих веб-сайтів, або будь-що,\r\n        що пропонується на цих веб-сайтах, включаючи їхню практику конфіденційності. Рекомендується ознайомитися з\r\n        політикою конфіденційності всіх веб-сайтів, які ви відвідуєте.</p>\r\n    </div>\r\n  </section>', 1, 1, 3, 1, 1, 1, 1560972202, 0, 0, 0, 0, 0, 1560972202, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'about-us/terms-of-use', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'head', '', 0, 0, 0, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n\n  <title>Faywi | Підключення інтернету в транспорті</title>\n  <meta name=\"description\" content=\"\">\n\n  <meta charset=\"UTF-8\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n<meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n<meta name=\"author\" content=\"Faywi\">\n\n<link rel=\"shortcut icon\" href=\"/src/img/favicon.png\" type=\"image/png\">\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\"\n  integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.css\">\n<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css\">\n<link href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900&display=swap\"\n  rel=\"stylesheet\">\n<link rel=\"stylesheet\" href=\"/css/all.min.css\">\n\n</head>', 0, 'a:0:{}', 0, ''),
(2, 0, 0, 'header', '', 0, 0, 0, '<!-- preloader -->\r\n<div id=\"preloader-wrapper\">\r\n    <div id=\"preloader\"></div>\r\n  </div>\r\n  \r\n  <!-- header -->\r\n  <header class=\"header\" id=\"header\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-3 col-6\">\r\n          <a href=\"/index\">\r\n            <div class=\"logo\">\r\n              <img class=\"logo__img\" src=\"/img/logo.svg\" alt=\"Faywi\">\r\n            </div>\r\n          </a>\r\n        </div>\r\n        <div class=\"col-md-9 col-6\">\r\n          <nav class=\"menu\">\r\n            <div class=\"menu-trigger\">\r\n              <span></span>\r\n              <span></span>\r\n              <span></span>\r\n            </div>\r\n            \r\n            <ul class=\"menu-box\">\r\n              <li class=\"menu-box__item\">\r\n                <a class=\"menu-box__item-anchor\" href=\"/index\" role=\"menuitem\">Головна</a>\r\n              </li>\r\n              <li class=\"menu-box__item menu-box__dropdown\" role=\"menu\">\r\n                <a class=\"menu-box__item-anchor\" href=\"/services\" aria-haspopup=\"true\" aria-expanded=\"false\"\r\n                  role=\"menuitem\">Послуги</a>\r\n                <ul class=\"menu-box__children-wrapper triangle-elem\">\r\n                    <div class=\"menu-box__children-row\">\r\n                      <li class=\"menu-box__children-item\">\r\n                        <a class=\"menu-box__children-item-anchor\" href=\"/services/bus\">\r\n                          <img class=\"menu-box__children-img\" src=\"/img/sentence__1.jpg\" alt=\"\">\r\n                          Інтернет для автобусів\r\n                        </a>\r\n                      </li>\r\n                      <li class=\"menu-box__children-item\">\r\n                        <a class=\"menu-box__children-item-anchor\" href=\"/services/car\">\r\n                          <img class=\"menu-box__children-img\" src=\"/img/sentence__2.jpg\" alt=\"\">\r\n                          Інтернет для авто\r\n                        </a>\r\n                      </li>\r\n                      <li class=\"menu-box__children-item\">\r\n                        <a class=\"menu-box__children-item-anchor\" href=\"/services/public-transport\">\r\n                          <img class=\"menu-box__children-img\" src=\"/img/sentence__3.jpg\" alt=\"\">\r\n                          Інтернет для громадського транспорту\r\n                        </a>\r\n                      </li>\r\n                      <li class=\"menu-box__children-item\">\r\n                        <a class=\"menu-box__children-item-anchor\" href=\"/services/yachts\">\r\n                          <img class=\"menu-box__children-img\" src=\"/img/sentence__5.jpg\" alt=\"\">\r\n                          Інтернет для яхт і кораблів\r\n                        </a>\r\n                      </li>\r\n                    </div>\r\n                  </ul>\r\n              </li>\r\n              <li class=\"menu-box__item\">\r\n                <a class=\"menu-box__item-anchor\" href=\"/price\" role=\"menuitem\">Ціни</a>\r\n              </li>\r\n              <li class=\"menu-box__item\">\r\n                <a class=\"menu-box__item-anchor\" href=\"/about-us\" role=\"menuitem\">Про нас</a>\r\n              </li>\r\n              <li class=\"menu-box__item\">\r\n                <a class=\"menu-box__item-anchor\" href=\"/contact\" role=\"menuitem\">Контакти</a>\r\n              </li>\r\n            </ul>\r\n            <div class=\"header__box search-box\">\r\n              <i class=\"ico ico-m ico-search\" id=\"search\" aria-hidden=\"true\"></i>\r\n              <div class=\"search-wrapper\">\r\n                <input class=\"input-search\" type=\"text\" placeholder=\"Поиск...\">\r\n                <button class=\"button-search\">\r\n                    <i class=\"ico ico-m ico-search\" aria-hidden=\"true\"></i>\r\n                </button>\r\n              </div>\r\n            </div>\r\n            <div class=\"header__box lang-box\">\r\n              <div class=\"lang-box__button\">UA</div>\r\n              <div class=\"lang-box__list-wrapper triangle-elem\">\r\n                <ul class=\"lang-box__list\">\r\n                  <li>EN</li>\r\n                  <li>RU</li>\r\n                  <li>PL</li>\r\n                </ul>\r\n              </div>\r\n            </div>\r\n          </nav>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </header>', 0, 'a:0:{}', 0, ''),
(3, 0, 0, 'footer', '', 0, 0, 0, '<footer class=\"footer\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-4\">\r\n          <div class=\"footer-item\">\r\n            <div class=\"footer-item__title title text-left\">\r\n              <h4 class=\"title__upper\">Про компанію</h4>\r\n            </div>\r\n            <div class=\"footer-item__content\">\r\n              <p>Faywi - це компанія з підключення 4G / 3G інтернету по всьому світу. Ми працюємо на ринку бездротового інтернету з 2005 року. За рік ми допомогли поліпшити сервіс 29 великих компаній, що займаються міжнародними автобусними перевезеннями. Тільки за вересень 2018 року більше 90 000 пасажирів скористалися інтернетом, який ми встановили в автобусах. Нами був встановлений перший працюючий інтернет у швидкісних потягах України.</p>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-6\">\r\n          <div class=\"footer-item\">\r\n            <div class=\"footer-item__title title text-left\">\r\n              <h4 class=\"title__upper\">Поліси</h4>\r\n            </div>\r\n            <div class=\"footer-item__content\">\r\n              <ul class=\"menu-list\">\r\n                <li>\r\n                  <a href=\"/about-us/privacy-policy\">Політика конфіденційності</a>\r\n                </li>\r\n                <li>\r\n                  <a href=\"/about-us/fair-use-policy\">Політика чесного використання</a>\r\n                </li>\r\n                <li>\r\n                  <a href=\"/about-us/terms-of-services\">Умови обслуговування</a>\r\n                </li>\r\n                <li>\r\n                  <a href=\"/about-us/terms-of-use\">Умови використання сайту</a>\r\n                </li>\r\n                <li>\r\n                  <a href=\"#\">Права і патенти</a>\r\n                </li>\r\n              </ul>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-6\">\r\n          <div class=\"footer-item\">\r\n            <div class=\"footer-item__title title text-left\">\r\n              <h4 class=\"title__upper\">Компанія</h4>\r\n            </div>\r\n            <div class=\"footer-item__content\">\r\n              <ul class=\"menu-list\">\r\n                <li>\r\n                  <a href=\"/index\">Головна</a>\r\n                </li>\r\n                <li>\r\n                  <a href=\"/services\">Послуги</a>\r\n                </li>\r\n                <li>\r\n                  <a href=\"/price\">Ціни</a>\r\n                </li>\r\n                <li>\r\n                  <a href=\"/about-us\">Про нас</a>\r\n                </li>\r\n                <li>\r\n                  <a href=\"/contact\">Контакти</a>\r\n                </li>\r\n              </ul>\r\n            </div>\r\n            <div class=\"footer-item__title title text-left\">\r\n              <h4 class=\"title__upper\">Ми в соцмережах</h4>\r\n            </div>\r\n            <div class=\"footer-item__content\">\r\n              <a href=\"#\">\r\n                <i class=\"ico ico-l ico-facebook-white\" aria-hidden=\"true\"></i>\r\n              </a>\r\n              <a href=\"#\">\r\n                <i class=\"ico ico-l ico-telegram-white\" aria-hidden=\"true\"></i>\r\n              </a>\r\n              <a href=\"#\">\r\n                <i class=\"ico ico-l ico-viber-white\" aria-hidden=\"true\"></i>\r\n              </a>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-2 col-sm-6\">\r\n          <div class=\"footer-item\">\r\n            <div class=\"footer-item__title title text-left\">\r\n              <h4 class=\"title__upper\">Зв\'язатися</h4>\r\n            </div>\r\n            <div class=\"footer-item__content\">\r\n              <ul class=\"menu-list\">\r\n                <li><a href=\"/contact\">\r\n                  Faywi Inc.,<br>\r\n                  Україна, м Київ, <br> вул. Богдана Хмельницького, 67</a>\r\n                </li>\r\n                <li>\r\n                  <a href=\"tel:0676232508\">+38(067)623-25-08</a>\r\n                </li>\r\n                <li>\r\n                  <a href=\"mailto:info@Faywi.net\">info@Faywi.net</a>\r\n                </li>\r\n                <li>\r\n                  <a href=\"\">\r\n                    <div class=\"logo\">\r\n                      <img class=\"logo__img\" src=\"/img/logo-white.svg\" alt=\"Faywi\">\r\n                    </div>\r\n                  </a>\r\n                </li>\r\n              </ul>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\"footer-copyright\">\r\n      <div class=\"container\">\r\n        <div class=\"text-center\">\r\n          <h4>© Copyright <span id=\"thisYear\"></span>, Faywi, Inc</h4>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </footer>\r\n  \r\n  <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"\r\n    integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\r\n  <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\"\r\n    integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\r\n  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"\r\n    integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\r\n  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js\"></script>\r\n  \r\n  <script src=\"/js/all.min.js\"></script>\r\n  \r\n  </body>\r\n  \r\n  </html>', 0, 'a:0:{}', 0, ''),
(4, 0, 0, 'services-block', '', 0, 0, 0, ' <section class=\"section section-content section-ui\">\r\n  <div class=\"container\">\r\n    <div class=\"title\">\r\n      <h2 class=\"title__upper\">Рішення</h2>\r\n      <p class=\"title__description\">Наша система забезпечує безпечне онлайн-підключення.\r\n        <br>\r\n        Фахівці цілодобово контролюють якість і надійність послуг.</p>\r\n    </div>\r\n    <div class=\"sentence-slider\">\r\n      <div class=\"box-sentence-wrapper\">\r\n        <a href=\"/public-transport.html\">\r\n          <div class=\"box-sentence\">\r\n            <div class=\"box-sentence__wrapper-images\">\r\n              <div class=\"box-sentence__images\">\r\n                <img src=\"img/sentence__1.svg\" alt=\"\">\r\n              </div>\r\n            </div>\r\n            <div class=\"title box-sentence__title\">\r\n              <h3 class=\"title__upper\"> Інтернет для громад- ського транспорту</h3>\r\n              <p class=\"title__description\">Забезпечуйте інтернетом до 80-ти пасажирів</p>\r\n            </div>\r\n            <div class=\"box-sentence__button\">\r\n              <button class=\"btn btn-branded btn-white btn-medium\">Детальніше</button>\r\n            </div>\r\n          </div>\r\n        </a>\r\n      </div>\r\n      <div class=\"box-sentence-wrapper\">\r\n        <a href=\"/bus.html\">\r\n          <div class=\"box-sentence\">\r\n            <div class=\"box-sentence__wrapper-images\">\r\n              <div class=\"box-sentence__images\">\r\n                <img src=\"img/sentence__2.svg\" alt=\"\">\r\n              </div>\r\n            </div>\r\n            <div class=\"title box-sentence__title\">\r\n              <h3 class=\"title__upper\">Інтернет для автобусів</h3>\r\n              <p class=\"title__description\">Підвищіть сервіс, збільште пасажиропотік і заробляйте більше</p>\r\n            </div>\r\n            <div class=\"box-sentence__button\">\r\n              <button class=\"btn btn-branded btn-white btn-medium\">Детальніше</button>\r\n            </div>\r\n          </div>\r\n        </a>\r\n      </div>\r\n      <div class=\"box-sentence-wrapper\">\r\n        <a href=\"/yachts.html\">\r\n          <div class=\"box-sentence\">\r\n            <div class=\"box-sentence__wrapper-images\">\r\n              <div class=\"box-sentence__images\">\r\n                <img src=\"img/sentence__3.svg\" alt=\"\">\r\n              </div>\r\n            </div>\r\n            <div class=\"title box-sentence__title\">\r\n              <h3 class=\"title__upper\">Інтернет для яхт</h3>\r\n              <p class=\"title__description\">На зв\'язку в морі і по всьому світу, з GPS контролем за судном</p>\r\n            </div>\r\n            <div class=\"box-sentence__button\">\r\n              <button class=\"btn btn-branded btn-white btn-medium\">Детальніше</button>\r\n            </div>\r\n          </div>\r\n        </a>\r\n      </div>\r\n      <div class=\"box-sentence-wrapper\">\r\n        <a href=\"/car.html\">\r\n          <div class=\"box-sentence\">\r\n            <div class=\"box-sentence__wrapper-images\">\r\n              <div class=\"box-sentence__images\">\r\n                <img src=\"img/sentence__4.svg\" alt=\"\">\r\n              </div>\r\n            </div>\r\n            <div class=\"title box-sentence__title\">\r\n              <h3 class=\"title__upper\">Інтернет для авто</h3>\r\n              <p class=\"title__description\">Ведіть переговори, дивіться фільми і насолоджуйтеся технологіями в дорозі\r\n              </p>\r\n            </div>\r\n            <div class=\"box-sentence__button\">\r\n              <button class=\"btn btn-branded btn-white btn-medium\">Детальніше</button>\r\n            </div>\r\n          </div>\r\n        </a>\r\n      </div>\r\n      <div class=\"box-sentence-wrapper\">\r\n        <a href=\"#\">\r\n          <div class=\"box-sentence\">\r\n            <div class=\"box-sentence__wrapper-images\">\r\n              <div class=\"box-sentence__images\">\r\n                <img src=\"img/sentence__5.svg\" alt=\"\">\r\n              </div>\r\n            </div>\r\n            <div class=\"title box-sentence__title\">\r\n              <h3 class=\"title__upper\">Інтернет для вантажоперевезень</h3>\r\n              <p class=\"title__description\">Будьте на зв\'язку в будь-якій точці вашої затяжної дороги\r\n              </p>\r\n            </div>\r\n            <div class=\"box-sentence__button\">\r\n              <button class=\"btn btn-branded btn-white btn-medium\">Детальніше</button>\r\n            </div>\r\n          </div>\r\n        </a>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</section>', 0, NULL, 0, ''),
(5, 0, 0, 'advantages', '', 0, 0, 0, '<section class=\"section section-content section-light-gray\">\r\n  <div class=\"container\">\r\n    <div class=\"title\">\r\n      <h2 class=\"title__upper\">Переваги нашого рішення</h2>\r\n    </div>\r\n    <div class=\"advantages\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-3 col-sm-6\">\r\n          <div class=\"advantages__item\">\r\n            <img src=\"img/advantages__1.svg\" alt=\"\">\r\n            <p>Контролюємо якість і надійність послуг 24/7</p>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-6\">\r\n          <div class=\"advantages__item\">\r\n            <img src=\"img/advantages__2.svg\" alt=\"\">\r\n            <p>Швидкість інтернету <br> до 150 Мбіт/сек</p>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-6\">\r\n          <div class=\"advantages__item\">\r\n            <img src=\"img/advantages__3.svg\" alt=\"\">\r\n            <p>Працює <br> по всьому Світу</p>\r\n          </div>\r\n        </div>\r\n        <div class=\"col-md-3 col-sm-6\">\r\n          <div class=\"advantages__item\">\r\n            <img src=\"img/advantages__4.svg\" alt=\"\">\r\n            <p>Гарантія <br>36 місяців</p>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</section>', 0, NULL, 0, ''),
(6, 0, 0, 'order', '', 0, 0, 0, '  <section class=\"section section-content section-light-gray\">\r\n  <div class=\"container\">\r\n    <div class=\"title\">\r\n      <h2 class=\"title__upper\">Як зробити замовлення</h2>\r\n    </div>\r\n    <div class=\"router-block\">\r\n      <ul class=\"block-list\">\r\n        <li class=\"block7-item wow fadeInLeft\" data-wow-delay=\"0.8s\"\r\n          style=\"visibility: visible; animation-delay: 0.8s;\">\r\n          <div class=\"img-cont\">\r\n            <svg width=\"80\" height=\"80\" viewBox=\"0 0 80 80\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n              <path d=\"M35 71.667H7.5\" stroke=\"#086BFF\" stroke-width=\"2.5\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M38.334 71.667H41.6673\" stroke=\"#086BFF\" stroke-width=\"2.5\" stroke-miterlimit=\"10\"></path>\r\n              <path\r\n                d=\"M13.3337 25H11.667C8.83366 25 6.66699 27.1667 6.66699 30V71.6667H1.66699V73.3333L6.66699 78.3333H73.3337L78.3337 73.3333V71.6667H45.0003\"\r\n                stroke=\"#086BFF\" stroke-width=\"2.5\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M73.334 71.6673V63.334\" stroke=\"#086BFF\" stroke-width=\"2.5\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M66.667 63.334V71.6673\" stroke=\"#086BFF\" stroke-width=\"2.5\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M13.334 71.667V1.66699H66.6673V8.33366H33.334\" stroke=\"#086BFF\" stroke-width=\"2.5\"\r\n                stroke-miterlimit=\"10\"></path>\r\n              <path\r\n                d=\"M58.3333 15H75C76.8333 15 78.3333 16.5 78.3333 18.3333V55C78.3333 56.8333 76.8333 58.3333 75 58.3333H58.3333C56.5 58.3333 55 56.8333 55 55V18.3333C55 16.5 56.5 15 58.3333 15Z\"\r\n                stroke=\"#086BFF\" stroke-width=\"2.5\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M45.0003 15H21.667V26.6667H45.0003V15Z\" stroke=\"#086BFF\" stroke-width=\"2.5\"\r\n                stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M45.0003 53.334H21.667V65.0007H45.0003V53.334Z\" stroke=\"#086BFF\" stroke-width=\"2.5\"\r\n                stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M40 46.667H20\" stroke=\"#086BFF\" stroke-width=\"2.5\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M46.6667 40H20\" stroke=\"#086BFF\" stroke-width=\"2.5\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M46.6667 33.334H20\" stroke=\"#086BFF\" stroke-width=\"2.5\" stroke-miterlimit=\"10\"></path>\r\n              <path\r\n                d=\"M20.4173 8.33366C20.4173 8.56378 20.2308 8.75032 20.0007 8.75032C19.7705 8.75032 19.584 8.56378 19.584 8.33366C19.584 8.10354 19.7705 7.91699 20.0007 7.91699C20.2308 7.91699 20.4173 8.10354 20.4173 8.33366Z\"\r\n                fill=\"#086BFF\" stroke=\"#086BFF\" stroke-width=\"2.5\"></path>\r\n              <path\r\n                d=\"M25.4173 8.33366C25.4173 8.56378 25.2308 8.75032 25.0007 8.75032C24.7705 8.75032 24.584 8.56378 24.584 8.33366C24.584 8.10354 24.7705 7.91699 25.0007 7.91699C25.2308 7.91699 25.4173 8.10354 25.4173 8.33366Z\"\r\n                fill=\"#086BFF\" stroke=\"#086BFF\" stroke-width=\"2.5\"></path>\r\n              <path\r\n                d=\"M30.4173 8.33366C30.4173 8.56378 30.2308 8.75032 30.0007 8.75032C29.7705 8.75032 29.584 8.56378 29.584 8.33366C29.584 8.10354 29.7705 7.91699 30.0007 7.91699C30.2308 7.91699 30.4173 8.10354 30.4173 8.33366Z\"\r\n                fill=\"#086BFF\" stroke=\"#086BFF\" stroke-width=\"2.5\"></path>\r\n              <path\r\n                d=\"M67.0833 51.6667C67.0833 51.8968 66.8968 52.0833 66.6667 52.0833C66.4365 52.0833 66.25 51.8968 66.25 51.6667C66.25 51.4365 66.4365 51.25 66.6667 51.25C66.8968 51.25 67.0833 51.4365 67.0833 51.6667Z\"\r\n                fill=\"#086BFF\" stroke=\"#086BFF\" stroke-width=\"2.5\"></path>\r\n            </svg>\r\n          </div>\r\n          <p class=\"name\">Заявка</p>\r\n          <p class=\"desc\">\r\n            <button type=\"button\" class=\"custom-btn link-btn\">Залиште заявку</button>\r\n            сайті або зателефонуйте нам:\r\n            <a href=\"tel:+38(067)623-25-08\">+38(067)623-25-08</a>\r\n          </p>\r\n\r\n        </li>\r\n        <li class=\"block7-item wow fadeInLeft\" data-wow-delay=\"0.6s\"\r\n          style=\"visibility: visible; animation-delay: 0.6s;\">\r\n          <div class=\"img-cont\">\r\n            <svg width=\"80\" height=\"80\" viewBox=\"0 0 80 80\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n              <path\r\n                d=\"M68.875 19.5H77.5C78.25 19.5 78.75 20 78.75 20.75V67.5C78.75 68.25 78.25 68.75 77.5 68.75H2.5C1.75 68.75 1.25 68.25 1.25 67.5V20.75C1.25 20 1.75 19.5 2.5 19.5H11.375\"\r\n                stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M11.25 61.75L11.375 1.25H68.875V61.875\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\">\r\n              </path>\r\n              <path d=\"M1.25 61.75L78.75 61.875\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M31.25 78.375L31.375 69.125\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M48.75 78.375L48.875 69.125\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M25 78.75H55\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M11.375 11.25H68.875\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M15 6.25H27.875\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\" stroke-dasharray=\"2 2\">\r\n              </path>\r\n              <path d=\"M29.875 6.25H65\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M21.25 21.25H26.25L28.75 41.25H53.75L56.25 26.25H31.25\" stroke=\"#086BFF\" stroke-width=\"2\"\r\n                stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M51.25 48.75H30C27.875 48.75 26.25 47.125 26.25 45C26.25 42.875 27.875 41.25 30 41.25H38.75\"\r\n                stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path\r\n                d=\"M33.75 53.75C35.1307 53.75 36.25 52.6307 36.25 51.25C36.25 49.8693 35.1307 48.75 33.75 48.75C32.3693 48.75 31.25 49.8693 31.25 51.25C31.25 52.6307 32.3693 53.75 33.75 53.75Z\"\r\n                stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path\r\n                d=\"M51.25 53.75C52.6307 53.75 53.75 52.6307 53.75 51.25C53.75 49.8693 52.6307 48.75 51.25 48.75C49.8693 48.75 48.75 49.8693 48.75 51.25C48.75 52.6307 49.8693 53.75 51.25 53.75Z\"\r\n                stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n            </svg>\r\n\r\n          </div>\r\n          <p class=\"name\">Купівля</p>\r\n          <p class=\"desc\">Отримайте своє замовлення після скоєння безготівкового розрахунку</p>\r\n        </li>\r\n        <li class=\"block7-item wow fadeInLeft\" data-wow-delay=\"0.4s\"\r\n          style=\"visibility: visible; animation-delay: 0.4s;\">\r\n          <div class=\"img-cont\">\r\n            <svg width=\"80\" height=\"74\" viewBox=\"0 0 80 74\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n              <path d=\"M45 71.667H0\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M65.1663 15C65.1663 19.6667 61.4997 23.3333 56.833 23.3333\" stroke=\"#086BFF\" stroke-width=\"2\"\r\n                stroke-miterlimit=\"10\"></path>\r\n              <path\r\n                d=\"M56.6667 60.0001C56.6667 62.6668 54.5 64.8335 51.8333 64.8335H38.8333C37 64.8335 35.5 63.3335 35.5 61.5002V61.3335L37 37.5001C37 34.0001 39.1667 30.8335 42.5 29.6668L52 26.8335V21.6668C49.8333 20.1668 48.6667 17.6668 48.6667 15.0001V10.3335C48.6667 6.00015 51.8333 2.16682 56.1667 1.66682C60.6667 1.16682 64.8333 4.50015 65.3333 9.16682C65.3333 9.50015 65.3333 9.66682 65.3333 10.0002V15.0001C65.3333 17.6668 64.1667 20.0001 62 21.6668V26.8335L71.5 29.6668C74.8333 30.8335 77 34.0001 77 37.5001L78.3333 61.5002C78.5 63.3335 77 64.8335 75.3333 65.0001C75.1667 65.0001 75.1667 65.0001 75 65.0001H61.5C58.8333 64.8335 56.6667 62.6668 56.6667 60.0001Z\"\r\n                stroke=\"#086BFF\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"></path>\r\n              <path d=\"M43.5 65V71.6667\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-linecap=\"round\"\r\n                stroke-linejoin=\"round\"></path>\r\n              <path d=\"M58.5003 35H68.5003V58.3333H45.167V35H55.167\" stroke=\"#086BFF\" stroke-width=\"2\"\r\n                stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M56.834 36.667V43.3337\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M70.167 65V71.6667\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-linecap=\"round\"\r\n                stroke-linejoin=\"round\"></path>\r\n              <path d=\"M41.667 58.333H48.3337\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-linecap=\"round\"\r\n                stroke-linejoin=\"round\"></path>\r\n              <path d=\"M65 58.333H71.6667\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-linecap=\"round\"\r\n                stroke-linejoin=\"round\"></path>\r\n              <path d=\"M48.5 10.333H70\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\" stroke-linecap=\"round\">\r\n              </path>\r\n              <path\r\n                d=\"M18.3337 71.6663C22.0156 71.6663 25.0003 68.6816 25.0003 64.9997C25.0003 61.3178 22.0156 58.333 18.3337 58.333C14.6518 58.333 11.667 61.3178 11.667 64.9997C11.667 68.6816 14.6518 71.6663 18.3337 71.6663Z\"\r\n                stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M5.83301 21.667H14.9997V48.3337H3.33301\" stroke=\"#086BFF\" stroke-width=\"2\"\r\n                stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M21.667 20V50\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M6.66699 64.9997H1.66699V51.6663L5.83366 19.9997V13.333H43.3337\" stroke=\"#086BFF\"\r\n                stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M18.333 63.333V66.6663\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M6.66699 58.333H1.66699\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              <path d=\"M25 65H38.3333\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n            </svg>\r\n\r\n          </div>\r\n          <p class=\"name\">Доставка</p>\r\n          <p class=\"desc\">Або замовте доставку - можна кур\'єром або забрати через пункт самовивозу.\r\n          </p>\r\n        </li>\r\n        <li class=\"block7-item wow fadeInLeft\" data-wow-delay=\"0.2s\"\r\n          style=\"visibility: visible; animation-delay: 0.2s;\">\r\n          <div class=\"img-cont\">\r\n            <svg width=\"81\" height=\"80\" viewBox=\"0 0 81 80\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r\n              <g>\r\n                <path d=\"M51.375 66.25V80\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n                <path d=\"M28.75 66.25V80\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n                <path d=\"M36.25 70V79.875\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"\r\n                  stroke-dasharray=\"2 2\"></path>\r\n                <path d=\"M0 51.25H15\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n                <path d=\"M0 28.75H15\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n                <path d=\"M10 36.25H0.125\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"\r\n                  stroke-dasharray=\"2 2\"></path>\r\n                <path d=\"M10.125 43.75H0.125\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"\r\n                  stroke-dasharray=\"2 2\"></path>\r\n                <path\r\n                  d=\"M62 53.875H66.25V26.375H62L53.625 17.5V13.75H26.375V17.5L18.125 26.25H13.875V53.875H18.125L26.25 62.125V66.25H53.625V62.125L62 53.875Z\"\r\n                  stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n                <path d=\"M66.25 51.25H80\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n                <path d=\"M66.25 28.75H80.125\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n                <path d=\"M70.125 36.25H80.125\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"\r\n                  stroke-dasharray=\"2 2\"></path>\r\n                <path d=\"M70.125 43.75H80.125\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"\r\n                  stroke-dasharray=\"2 2\"></path>\r\n                <path d=\"M51.125 13.75V0\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n                <path d=\"M28.75 13.75V0\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n                <path d=\"M43.875 10V0.125\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"\r\n                  stroke-dasharray=\"2 2\"></path>\r\n                <path d=\"M36.25 10V0.125\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"\r\n                  stroke-dasharray=\"2 2\"></path>\r\n                <path d=\"M43.75 70V79.875\" stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"\r\n                  stroke-dasharray=\"2 2\"></path>\r\n                <path\r\n                  d=\"M58.75 36.5L57.25 32L54.75 32.75C52 33.625 49.75 30.5 51.5 28.25L53 26.125L49.125 23.375L47.625 25.5C46 27.875 42.25 26.625 42.25 23.75V21.125H37.5V23.75C37.5 26.625 33.875 27.75 32.125 25.5L30.625 23.375L26.75 26.125L28.25 28.25C29.875 30.625 27.625 33.625 25 32.75L22.5 32L21.25 36.5L23.75 37.25C26.5 38.125 26.5 42 23.75 42.875L21.25 43.625L22.75 48.125L25.25 47.375C28 46.5 30.25 49.625 28.5 51.875L27 54L30.875 56.75L32.375 54.625C34 52.25 37.75 53.5 37.75 56.375V59H42.5V56.375C42.5 53.5 46.125 52.375 47.875 54.625L49.375 56.75L53.25 54L51.75 51.875C50.125 49.5 52.375 46.5 55 47.375L57.5 48.125L59 43.625L56.5 42.875C53.75 42 53.75 38.125 56.5 37.25L58.75 36.5Z\"\r\n                  stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n                <path\r\n                  d=\"M40 48.375C44.5563 48.375 48.25 44.6813 48.25 40.125C48.25 35.5686 44.5563 31.875 40 31.875C35.4437 31.875 31.75 35.5686 31.75 40.125C31.75 44.6813 35.4437 48.375 40 48.375Z\"\r\n                  stroke=\"#086BFF\" stroke-width=\"2\" stroke-miterlimit=\"10\"></path>\r\n              </g>\r\n              <defs>\r\n                <clipPath id=\"clip0\">\r\n                  <rect width=\"80.125\" height=\"80\" fill=\"white\"></rect>\r\n                </clipPath>\r\n              </defs>\r\n            </svg>\r\n          </div>\r\n          <p class=\"name\">Установка</p>\r\n          <p class=\"desc\">Призначте зручний час, і наші інженери встановлять обладнання протягом дня</p>\r\n        </li>\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</section>', 0, NULL, 0, ''),
(7, 0, 0, 'feedback', '', 0, 0, 0, '<section class=\"section section-content section-ui\" id=\"feedback\">\r\n  <div class=\"container\">\r\n    <div class=\"row\">\r\n      <div class=\"col-md-6 align-self-center\">\r\n        <div class=\"title text-left\">\r\n          <h2 class=\"title__upper\">Шукайте рішення мобільного інтернету в транспорті?</h2>\r\n          <p class=\"title__description\">Наша система забезпечує безпечне онлайн-підключення. Фахівці цілодобово контролюють якість і надійність послуг.</p>\r\n        </div>\r\n      </div>\r\n      <div class=\"col-md-6\">\r\n        <div class=\"main-form\">\r\n  <form action=\"\" class=\"form\">\r\n    <div class=\"container\">\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6\">\r\n          <input class=\"input\" type=\"text\" value placeholder=\"Ім\'я\" name=\"firstname\">\r\n          <input class=\"input\" type=\"text\" value placeholder=\"Email\" name=\"email\">\r\n        </div>\r\n        <div class=\"col-md-6\">\r\n          <input class=\"input\" type=\"text\" value placeholder=\"Прізвище\" name=\"lastname\">\r\n          <select name=\"decision_choice\" id=\"decisionChoice\">\r\n            <option value>Тип продукту</option>\r\n            <option value=\"Інтернет для автобусів\">Інтернет для автобусів</option>\r\n            <option value=\"Інтернет для авто\">Інтернет для авто</option>\r\n            <option value=\"Інтернет для громадського транспорту\">Інтернет для громадського транспорту\r\n            </option>\r\n            <option value=\"Інтернет для вантажоперевезень\">Інтернет для вантажоперевезень</option>\r\n            <option value=\"Інтернет для яхт і кораблів\">Інтернет для яхт і кораблів</option>\r\n            <option value=\"Медіасервер (MediaBot)\">Медіасервер (MediaBot)</option>\r\n          </select>\r\n        </div>\r\n        <div class=\"col-md-12\">\r\n          <textarea name=\"tell_us_about_your_mobile_connectivity_needs\"\r\n            id=\"tell_us_about_your_mobile_connectivity_needs\"\r\n            placeholder=\"Розкажіть нам про свої потреби у мобільному зв\'язку\" cols=\"30\" rows=\"10\"></textarea>\r\n          <button class=\"btn btn-dark btn-medium btn-center\">Відправити запит</button>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </form>\r\n</div>        \r\n      </div>\r\n    </div>\r\n  </div>\r\n</section>', 0, NULL, 0, ''),
(8, 0, 0, 'partners', '', 0, 0, 0, ' <section class=\"section section-content section-light-gray\">\n  <div class=\"container\">\n    <div class=\"title\">\n      <h2 class=\"title__upper\">Потужність і безпека з мережею партнерів</h2>\n    </div>\n    <div class=\"slider partners-slider\">\n      <div><img src=\"/img/partners__1.png\" alt=\"\"></div>\n      <div><img src=\"/img/partners__2.png\" alt=\"\"></div>\n      <div><img src=\"/img/partners__3.png\" alt=\"\"></div>\n      <div><img src=\"/img/partners__4.png\" alt=\"\"></div>\n      <div><img src=\"/img/partners__5.png\" alt=\"\"></div>\n    </div>\n  </div>\n</section>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'tagElementPlugin', '', 0, 1, 0, 'switch ($modx->event->name) {\n    case \'OnDocFormPrerender\':\n        $field = \'ta\';\n        $panel = \'\';\n        break;\n    case \'OnTempFormPrerender\':\n        $field = \'modx-template-content\';\n        $panel = \'modx-panel-template\';\n        break;\n    case \'OnChunkFormPrerender\':\n        $field = \'modx-chunk-snippet\';\n        $panel = \'modx-panel-chunk\';\n        break;\n    case \'OnSnipFormPrerender\':\n        $field = \'modx-snippet-snippet\';\n        $panel = \'modx-panel-snippet\';\n        break;\n    case \'OnPluginFormPrerender\':\n        $field = \'modx-plugin-plugincode\';\n        $panel = \'modx-panel-plugin\';\n        break;\n    case \'OnFileEditFormPrerender\':\n        $field = \'modx-file-content\';\n        $panel = \'modx-panel-file-edit\';\n        break;\n    default:\n        return;\n}\nif (!empty($field)) {\n    $modx->controller->addLexiconTopic(\'core:chunk\');\n    $modx->controller->addLexiconTopic(\'core:snippet\');\n    $modx->controller->addLexiconTopic(\'tagelementplugin:default\');\n    $jsUrl = $modx->getOption(\'tagelementplugin_assets_url\', null, $modx->getOption(\'assets_url\') . \'components/tagelementplugin/\').\'js/mgr/\';\n    /** @var modManagerController */\n    $modx->controller->addLastJavascript($jsUrl.\'tagelementplugin.js\');\n    $modx->controller->addLastJavascript($jsUrl.\'dialogs.js\');\n    $usingFenon = $modx->getOption(\'pdotools_fenom_parser\', null, false) ? \'true\' : \'false\';\n    $connectorUrl = $modx->getOption(\"tagelementplugin_assets_url\", null, $modx->getOption(\"assets_url\") . \"components/tagelementplugin/\").\"connector.php\";\n    $_html = <<<SCRIPT\n<script type=\"text/javascript\">\n    var tagElPlugin = {};\n    tagElPlugin.config = {\n        panel : \'{$panel}\',\n        field : \'{$field}\',\n        parent : [],\n        keys : {\n        	quickEditor: {$modx->getOption(\'tagelementplugin_quick_editor_keys\', null, \'\')},\n            elementEditor: {$modx->getOption(\'tagelementplugin_element_editor_keys\', null, \'\')},\n            chunkEditor: {$modx->getOption(\'tagelementplugin_chunk_editor_keys\', null, \'\')},\n            quickChunkEditor: {$modx->getOption(\'tagelementplugin_quick_chunk_editor_keys\', null,\' \')},\n            elementProperties: {$modx->getOption(\'tagelementplugin_element_prop_keys\', null, \'\')}\n        },\n        using_fenom: {$usingFenon},\n        elementEditor: \'{$modx->getOption(\"which_element_editor\")}\',\n        connector_url: \'{$connectorUrl}\'\n    };\n</script>\nSCRIPT;\n    $modx->controller->addHtml($_html);\n}', 0, NULL, 0, '', 0, 'core/components/tagelementplugin/elements/plugins/plugin.tagelementplugin.php'),
(2, 0, 0, 'Ace', 'Ace code editor plugin for MODx Revolution', 0, 0, 0, '/**\n * Ace Source Editor Plugin\n *\n * Events: OnManagerPageBeforeRender, OnRichTextEditorRegister, OnSnipFormPrerender,\n * OnTempFormPrerender, OnChunkFormPrerender, OnPluginFormPrerender,\n * OnFileCreateFormPrerender, OnFileEditFormPrerender, OnDocFormPrerender\n *\n * @author Danil Kostin <danya.postfactum(at)gmail.com>\n *\n * @package ace\n *\n * @var array $scriptProperties\n * @var Ace $ace\n */\nif ($modx->event->name == \'OnRichTextEditorRegister\') {\n    $modx->event->output(\'Ace\');\n    return;\n}\n\nif ($modx->getOption(\'which_element_editor\', null, \'Ace\') !== \'Ace\') {\n    return;\n}\n\n$ace = $modx->getService(\'ace\', \'Ace\', $modx->getOption(\'ace.core_path\', null, $modx->getOption(\'core_path\').\'components/ace/\').\'model/ace/\');\n$ace->initialize();\n\n$extensionMap = array(\n    \'tpl\'   => \'text/x-smarty\',\n    \'htm\'   => \'text/html\',\n    \'html\'  => \'text/html\',\n    \'css\'   => \'text/css\',\n    \'scss\'  => \'text/x-scss\',\n    \'less\'  => \'text/x-less\',\n    \'svg\'   => \'image/svg+xml\',\n    \'xml\'   => \'application/xml\',\n    \'xsl\'   => \'application/xml\',\n    \'js\'    => \'application/javascript\',\n    \'json\'  => \'application/json\',\n    \'php\'   => \'application/x-php\',\n    \'sql\'   => \'text/x-sql\',\n    \'md\'    => \'text/x-markdown\',\n    \'txt\'   => \'text/plain\',\n    \'twig\'  => \'text/x-twig\'\n);\n\n// Define default mime for html elements(templates, chunks and html resources)\n$html_elements_mime=$modx->getOption(\'ace.html_elements_mime\',null,false);\nif(!$html_elements_mime){\n    // this may deprecated in future because components may set ace.html_elements_mime option now\n    switch (true) {\n        case $modx->getOption(\'twiggy_class\'):\n            $html_elements_mime = \'text/x-twig\';\n            break;\n        case $modx->getOption(\'pdotools_fenom_parser\'):\n            $html_elements_mime = \'text/x-smarty\';\n            break;\n        default:\n            $html_elements_mime = \'text/html\';\n    }\n}\n\n// Defines wether we should highlight modx tags\n$modxTags = false;\nswitch ($modx->event->name) {\n    case \'OnSnipFormPrerender\':\n        $field = \'modx-snippet-snippet\';\n        $mimeType = \'application/x-php\';\n        break;\n    case \'OnTempFormPrerender\':\n        $field = \'modx-template-content\';\n        $modxTags = true;\n        $mimeType = $html_elements_mime;\n        break;\n    case \'OnChunkFormPrerender\':\n        $field = \'modx-chunk-snippet\';\n        if ($modx->controller->chunk && $modx->controller->chunk->isStatic()) {\n            $extension = pathinfo($modx->controller->chunk->name, PATHINFO_EXTENSION);\n            if(!$extension||!isset($extensionMap[$extension])){\n                $extension = pathinfo($modx->controller->chunk->getSourceFile(), PATHINFO_EXTENSION);\n            }\n            $mimeType = isset($extensionMap[$extension]) ? $extensionMap[$extension] : \'text/plain\';\n        } else {\n            $mimeType = $html_elements_mime;\n        }\n        $modxTags = true;\n        break;\n    case \'OnPluginFormPrerender\':\n        $field = \'modx-plugin-plugincode\';\n        $mimeType = \'application/x-php\';\n        break;\n    case \'OnFileCreateFormPrerender\':\n        $field = \'modx-file-content\';\n        $mimeType = \'text/plain\';\n        break;\n    case \'OnFileEditFormPrerender\':\n        $field = \'modx-file-content\';\n        $extension = pathinfo($scriptProperties[\'file\'], PATHINFO_EXTENSION);\n        $mimeType = isset($extensionMap[$extension])\n            ? $extensionMap[$extension]\n            : \'text/plain\';\n        $modxTags = $extension == \'tpl\';\n        break;\n    case \'OnDocFormPrerender\':\n        if (!$modx->controller->resourceArray) {\n            return;\n        }\n        $field = \'ta\';\n        $mimeType = $modx->getObject(\'modContentType\', $modx->controller->resourceArray[\'content_type\'])->get(\'mime_type\');\n\n        if($mimeType == \'text/html\')$mimeType = $html_elements_mime;\n\n        if ($modx->getOption(\'use_editor\')){\n            $richText = $modx->controller->resourceArray[\'richtext\'];\n            $classKey = $modx->controller->resourceArray[\'class_key\'];\n            if ($richText || in_array($classKey, array(\'modStaticResource\',\'modSymLink\',\'modWebLink\',\'modXMLRPCResource\'))) {\n                $field = false;\n            }\n        }\n        $modxTags = true;\n        break;\n    default:\n        return;\n}\n\n$modxTags = (int) $modxTags;\n$script = \'\';\nif ($field) {\n    $script .= \"MODx.ux.Ace.replaceComponent(\'$field\', \'$mimeType\', $modxTags);\";\n}\n\nif ($modx->event->name == \'OnDocFormPrerender\' && !$modx->getOption(\'use_editor\')) {\n    $script .= \"MODx.ux.Ace.replaceTextAreas(Ext.query(\'.modx-richtext\'));\";\n}\n\nif ($script) {\n    $modx->controller->addHtml(\'<script>Ext.onReady(function() {\' . $script . \'});</script>\');\n}', 0, NULL, 0, '', 0, 'ace/elements/plugins/ace.plugin.php');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'OnChunkFormPrerender', 0, 0),
(1, 'OnDocFormPrerender', 0, 0),
(1, 'OnTempFormPrerender', 0, 0),
(1, 'OnSnipFormPrerender', 0, 0),
(1, 'OnPluginFormPrerender', 0, 0),
(1, 'OnFileEditFormPrerender', 0, 0),
(2, 'OnChunkFormPrerender', 0, 0),
(2, 'OnPluginFormPrerender', 0, 0),
(2, 'OnSnipFormPrerender', 0, 0),
(2, 'OnTempFormPrerender', 0, 0),
(2, 'OnFileEditFormPrerender', 0, 0),
(2, 'OnFileCreateFormPrerender', 0, 0),
(2, 'OnDocFormPrerender', 0, 0),
(2, 'OnRichTextEditorRegister', 0, 0),
(2, 'OnManagerPageBeforeRender', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'Начальный шаблон', 'Template', 0, 0, '', 0, '[[$head]]\n\n<body>\n\n\n[[$header]]\n\n  [[*content]]\n\n\n[[$footer]]', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnTempFormDelete', 1, 'Templates'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnEmptyTrash', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnBeforeWebLogin', 3, 'Security'),
('OnWebAuthentication', 3, 'Security'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnPageUnauthorized', 1, 'Security'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserNotFound', 1, 'Users'),
('OnBeforeUserActivate', 1, 'Users'),
('OnUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserSave', 1, 'Users'),
('OnUserRemove', 1, 'Users'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnBeforeRegisterClientScripts', 5, 'System'),
('OnWebPagePrerender', 5, 'System'),
('OnBeforeCacheUpdate', 4, 'System'),
('OnCacheUpdate', 4, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnSiteRefresh', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageAfterRender', 2, 'System'),
('OnWebPageInit', 5, 'System'),
('OnLoadWebDocument', 5, 'System'),
('OnParseDocument', 5, 'System'),
('OnWebPageComplete', 5, 'System'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnPageNotFound', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnMODXInit', 5, 'System'),
('OnElementNotFound', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnInitCulture', 1, 'Internationalization'),
('OnCategorySave', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnChunkSave', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnContextSave', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnPluginSave', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('automatic_template_assignment', 'parent', 'textfield', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/display/revolution20/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', NULL),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_format', '0', 'textfield', 'core', 'caching', NULL),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_resource_clear_partial', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '', 'textfield', 'core', 'furls', '2019-06-09 10:52:25'),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2019-06-09 10:44:48'),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'textfield', 'core', 'system', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_media_source_type', 'sources.modFileMediaSource', 'modx-combo-source-type', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('editor_css_path', '', 'textfield', 'core', 'editor', NULL),
('editor_css_selectors', '', 'textfield', 'core', 'editor', NULL),
('emailsender', 'bogdangbhj@gmail.com', 'textfield', 'core', 'authentication', '2019-06-09 10:44:48'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', NULL),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_page', '1', 'textfield', 'core', 'site', NULL),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', NULL),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', NULL),
('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'http://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('filemanager_path', '', 'textfield', 'core', 'file', NULL),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('filemanager_url', '', 'textfield', 'core', 'file', NULL),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'russian', 'textfield', 'core', 'furls', '2019-06-09 10:52:06'),
('friendly_alias_translit_class', 'modx.translit.modTransliterate', 'textfield', 'core', 'furls', '2019-06-09 10:56:01'),
('friendly_alias_translit_class_path', '{core_path}components/translit/model/', 'textfield', 'core', 'furls', '2019-06-09 10:56:01'),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '1', 'combo-boolean', 'core', 'furls', '2019-06-09 10:50:53'),
('friendly_urls_strict', '1', 'combo-boolean', 'core', 'furls', '2019-06-09 10:51:00'),
('use_frozen_parent_uris', '1', 'combo-boolean', 'core', 'furls', '2019-06-09 10:51:08'),
('global_duplicate_uri_check', '1', 'combo-boolean', 'core', 'furls', '2019-06-09 10:50:58'),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('log_level', '1', 'textfield', 'core', 'system', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('log_deprecated', '1', 'combo-boolean', 'core', 'system', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('lock_ttl', '360', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', NULL),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_favicon_url', '', 'textfield', 'core', 'manager', NULL),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', NULL),
('manager_js_document_root', '', 'textfield', 'core', 'manager', NULL),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', NULL),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_lang_attribute', 'ru', 'textfield', 'core', 'language', '2019-06-09 10:44:48'),
('manager_language', 'ru', 'modx-combo-language', 'core', 'language', '2019-06-09 10:44:48'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_week_start', '0', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'textfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('password_generated_length', '10', 'textfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'textfield', 'core', 'authentication', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('rb_base_dir', '', 'textfield', 'core', 'file', NULL),
('rb_base_url', '', 'textfield', 'core', 'file', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('server_offset_time', '0', 'textfield', 'core', 'system', NULL),
('server_protocol', 'http', 'textfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('send_poweredby_header', '1', 'combo-boolean', 'core', 'system', '2019-06-09 10:44:48'),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'textfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'textfield', 'core', 'site', NULL),
('static_elements_automate_templates', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_tvs', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_chunks', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_snippets', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_plugins', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_default_mediasource', '0', 'modx-combo-source', 'core', 'static_elements', NULL),
('static_elements_default_category', '0', 'modx-combo-category', 'core', 'static_elements', NULL),
('static_elements_basepath', '', 'textfield', 'core', 'static_elements', NULL),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', NULL),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', NULL),
('unauthorized_page', '1', 'textfield', 'core', 'site', NULL),
('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf,md,ttf,woff,eot,scss,less,css.map', 'textfield', 'core', 'file', NULL),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '104857600', 'textfield', 'core', 'file', '2019-06-09 10:44:48'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('use_alias_path', '1', 'combo-boolean', 'core', 'furls', '2019-06-09 10:51:06'),
('use_browser', '1', 'combo-boolean', 'core', 'file', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2019-06-09 10:44:48'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2019-06-09 10:45:21'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.27.html ', 'textfield', 'core', 'manager', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('which_element_editor', 'Ace', 'modx-combo-rte', 'core', 'editor', '2019-06-09 11:25:20'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('preserve_menuindex', '1', 'combo-boolean', 'core', 'manager', NULL),
('allow_tv_eval', '1', 'combo-boolean', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('error_log_filename', 'error.log', 'textfield', 'core', 'system', NULL),
('error_log_filepath', '', 'textfield', 'core', 'system', NULL),
('settings_version', '2.7.1-pl', 'textfield', 'core', 'system', NULL),
('settings_distro', 'advanced', 'textfield', 'core', 'system', NULL),
('tagelementplugin_quick_editor_keys', '{key: Ext.EventObject.ENTER, ctrl: true, shift: false, alt: false}', 'textfield', 'tagelementplugin', 'tagelementplugin_main', NULL),
('tagelementplugin_element_editor_keys', '{key: Ext.EventObject.ENTER, ctrl: true, shift: true, alt: false}', 'textfield', 'tagelementplugin', 'tagelementplugin_main', NULL),
('tagelementplugin_element_prop_keys', '{key: Ext.EventObject.INSERT, ctrl: true, shift: false, alt: false}', 'textfield', 'tagelementplugin', 'tagelementplugin_main', NULL),
('tagelementplugin_quick_chunk_editor_keys', '{key: Ext.EventObject.C, ctrl: true, shift: false, alt: true}', 'textfield', 'tagelementplugin', 'tagelementplugin_main', NULL),
('tagelementplugin_chunk_editor_keys', '{key: Ext.EventObject.C, ctrl: true, shift: true, alt: true}', 'textfield', 'tagelementplugin', 'tagelementplugin_main', NULL),
('ace.theme', 'chrome', 'textfield', 'ace', 'general', NULL),
('ace.font_size', '13px', 'textfield', 'ace', 'general', NULL),
('ace.word_wrap', '', 'combo-boolean', 'ace', 'general', NULL),
('ace.soft_tabs', '1', 'combo-boolean', 'ace', 'general', NULL),
('ace.tab_size', '4', 'textfield', 'ace', 'general', NULL),
('ace.fold_widgets', '1', 'combo-boolean', 'ace', 'general', NULL),
('ace.show_invisibles', '0', 'combo-boolean', 'ace', 'general', NULL),
('ace.snippets', '', 'textarea', 'ace', 'general', NULL),
('ace.height', '', 'textfield', 'ace', 'general', NULL),
('ace.grow', '', 'textfield', 'ace', 'general', NULL),
('ace.html_elements_mime', '', 'textfield', 'ace', 'general', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(191) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('translit-1.0.0-beta', '2019-06-09 13:55:28', '2019-06-09 10:56:01', '2019-06-09 13:56:01', 0, 1, 1, 0, 'translit-1.0.0-beta.transport.zip', NULL, 'a:7:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:453:\"--------------------\nExtension: translit\n--------------------\nVersion: 1.0.0-beta\nReleased: October 20, 2010\nSince: October 20, 2010\nAuthor: Jason Coward <jason@modx.com>\n\nA MODx Revolution Core Extension, the translit package provides a custom transliteration service class. When installed,\nthis is automatically available for the core Friendly URL alias transliteration process for Resources. You can also use\nthe service in your plugins and snippets.\";s:9:\"signature\";s:19:\"translit-1.0.0-beta\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:47:\"/workspace/package/install/translit-1.0.0-beta/\";s:14:\"package_action\";i:0;}', 'translit', 'a:38:{s:2:\"id\";s:24:\"4d556cf0b2b083396d000eeb\";s:7:\"package\";s:24:\"4d556cf0b2b083396d000eea\";s:12:\"display_name\";s:19:\"translit-1.0.0-beta\";s:4:\"name\";s:8:\"translit\";s:7:\"version\";s:5:\"1.0.0\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:4:\"beta\";s:8:\"vrelease\";s:4:\"beta\";s:14:\"vrelease_index\";s:1:\"0\";s:6:\"author\";s:8:\"opengeek\";s:11:\"description\";s:585:\"<p>A service class that allows custom transliteration tables to be used when auto-creating or sanitizing friendly URL aliases in MODx Revolution. This initial beta release includes three tables that can be specified as the friendly_alias_translit System Setting:</p>\n<p><ol>\n<li>noaccents</li>\n<li>russian</li>\n<li>german</li>\n</ol>\nCustom named transliteration tables can be manually added to the {core_path}components/translit/model/modx/translit/tables/ directory and configured. Additional contributed transliteration tables will be included in future releases of the package.\n</p>\";s:12:\"instructions\";s:37:\"<p>Install via Package Management</p>\";s:9:\"changelog\";s:0:\"\";s:9:\"createdon\";s:24:\"2010-10-20T11:53:35+0000\";s:9:\"createdby\";s:8:\"opengeek\";s:8:\"editedon\";s:24:\"2019-06-09T10:43:48+0000\";s:10:\"releasedon\";s:24:\"2010-10-20T11:57:11+0000\";s:9:\"downloads\";s:6:\"162374\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:47:\"http://modxcms.com/forums/index.php?topic=56059\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:1:\"2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=4d556cf1b2b083396d000eec\";s:9:\"signature\";s:19:\"translit-1.0.0-beta\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:1:\"2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"4d556cf1b2b083396d000eec\";s:7:\"version\";s:24:\"4d556cf0b2b083396d000eeb\";s:8:\"filename\";s:33:\"translit-1.0.0-beta.transport.zip\";s:9:\"downloads\";s:6:\"162576\";s:6:\"lastip\";s:12:\"77.52.192.42\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=4d556cf1b2b083396d000eec\";}s:17:\"package-signature\";s:19:\"translit-1.0.0-beta\";s:10:\"categories\";s:36:\"internationalization,core-extensions\";s:4:\"tags\";s:15:\"transliteration\";}', 1, 0, 0, 'beta', 0),
('ace-1.8.0-pl', '2019-06-09 14:24:17', '2019-06-09 12:19:09', '2019-06-09 14:25:20', 0, 1, 1, 0, 'ace-1.8.0-pl.transport.zip', NULL, 'a:3:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:271:\"--------------------\nExtra: Ace\n--------------------\nSince: March 29th, 2012\nAuthor: Danil Kostin <danya.postfactum@gmail.com>\nLicense: GNU GPLv2 (or later at your option)\n\nIntegrates Ace Code Editor into MODx Revolution.\n\nPress Ctrl+Alt+H to see all available shortcuts.\";s:9:\"changelog\";s:4000:\"Changelog for Ace integration into MODx Revolution.\n\nAce 1.8.0\n====================================\n- Added: autocompletion for php functions.\n\nAce 1.7.0\n====================================\n- Added: new system setting \"ace.grow\".\n- Added: new system setting \"ace.html_elements_mime\".\n\nAce 1.6.5\n====================================\n- Added: \"Twig\" syntax for support of Twig in chunks.\n- Changed: Plugin is not static anymore.\n\nAce 1.6.4\n====================================\n- Fixed: Support of emmet in smarty mode. Again.\n\nAce 1.6.3\n====================================\n- Fixed: Support of emmet in smarty mode.\n\nAce 1.6.2\n====================================\n- Fixed: Editor mode handling.\n- Added: \"Markdown\" syntax for mime type \"text/x-markdown\".\n\nAce 1.6.1\n====================================\n- Fixed : Work with enabled system setting \"compress_js\".\n\nAce 1.6.0\n====================================\n- Added: \"Smarty\" syntax for support of Fenom in chunks.\n- Updated: Ace to version 1.2.0.\n\nAce 1.5.1\n====================================\n- Fixed: Bug with narrowing of the textarea.\n\nAce 1.5.0\n====================================\n- Changed: Assets are moved back to /assets/\n- Fixed: MODx tag completions (was completely broken)\n- Added: Editor height setting\n\nAce 1.4.3\n====================================\n- Added: MODx tag completions (Ctrl+Space)\n- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug\n\nAce 1.4.2\n====================================\n- Added: Undo coalescing\n- Changed: Mac fullscreen command is bound to Command+F12\n- Added: Drag delay (allow to start new selection inside current one) for Mac\n- Fixed: Use file extension of static chunks to detect code syntax\n\n\nAce 1.4.1\n====================================\n- Fixed: Tab handling\n- Fixed: Emmet shortcut listing by Ctr+Alt+H\n- Added: Expandable snippets support (see ace.snippets setting)\n- Added: Emmet wrap_with_abbreviation command (Alt+W)\n\nAce 1.4.0\n====================================\n- Added: Emmet (aka Zen Coding) support\n- Added: Terminal dark theme\n- Added: Hotkey table (Ctrl+Alt+H)\n- Fixed: Resource overview fatal error\n- Changed: Assets are moved to /manager/assets/components/\n\nAce 1.3.3\n====================================\n- Added: PHP live syntax check\n- Added: Chaos dark theme\n- Added: Setting show_invisibles\n\n\nAce 1.3.2\n====================================\n- Fixed: The bug while installing the Ace\n- Fixed: Broken word_wrap setting\n- Added: Tab settings (tab size, soft tab)\n- Added: Now completele compatible with AjaxManager extra\n\n\nAce 1.3.1\n====================================\n- Changed: Plugin content now is stored in static file\n\n\nAce 1.3.0\n====================================\n- Added: German translation\n- Added: MODx tags highlighting\n- Added: Ambiance and xcode themes\n- Added: less/scss syntax highlighting\n- Added: Fullwindow mode (Ctrl + F11)\n- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.\n\n\nAce 1.2.1\n====================================\n- Changed: Assets are moved to manager folder\n- Added: Font size setting\n- Added: \"GitHub\" theme\n- Added: Support of html5 drag\'n\'drop (accepting of dropped text)\n- Added: XML / HTML tag autoclosing\n- Fixed: broken en lexicon and php 5.3 incompatibility\n\n\nAce 1.2.0\n====================================\n- Removed: Some unnecessary options\n- Changed: Editor options are moved to system settings\n- Fixed: Multiple little editor bugs\n- Added: Add missing \"OnFileEditFormPrerender\" event to MODx\n- Added: Multiline editing\n- Added: Advanced find/replace window\n\n\nAce 1.1.0\n====================================\n- Fixed: Fatal error on document create event\n- Fixed: Changing of properties has no effect\n- Added: File edition support\n- Added: MODx tree elements drag\'n\'drop support\n- Added: Auto-assigning which_element_editor to Ace\n\n\nAce 1.0.0\n====================================\n- Added: Plugin properties to adjust how Ace behaves\n- Initial commit\";}', 'Ace', 'a:38:{s:2:\"id\";s:24:\"5c77c1ffbc8dd3cf0d8b4567\";s:7:\"package\";s:24:\"4f6e2782f245544fe8000014\";s:12:\"display_name\";s:12:\"ace-1.8.0-pl\";s:4:\"name\";s:3:\"Ace\";s:7:\"version\";s:5:\"1.8.0\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"8\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:9:\"bezumkin2\";s:11:\"description\";s:376:\"<p>New feature: modx tag code autocompletion! Press Ctrl+Space to get code suggestions with descriptions.</p><p>Works for snippets, chunks, system settings, tvs and resource fields, filters and properties.</p><p>Property sets, lexicon entries are not supported. Unfortunately, I have no idea how to retrieve chunk-specific placeholders, so there is no placeholder support.</p>\";s:12:\"instructions\";s:353:\"<p></p><p>Install via Package Management.</p><p>Set editor theme you wish in system settings (change namespace to \"ace\").</p><p>If you want to use this editor for resources, just set system option <i>use_editor</i> to <b>false</b>&nbsp;(global usage), or&nbsp;<i>richtext</i>&nbsp;setting of certain resource to <b>false</b> (specific usage).</p><p></p>\";s:9:\"changelog\";s:4840:\"<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>Ace 1.8.0</p><p>====================================</p><p>- Added: autocompletion for php functions.</p><p></p><p>Ace 1.7.0</p><p>====================================</p><p>- Added: new system setting \"ace.grow\".</p><p>- Added: new system setting \"ace.html_elements_mime\".</p><p></p><p>Ace 1.6.5</p><p>====================================</p><p>- Added: \"Twig\" syntax for support of Twig in chunks.</p><p>- Changed: Plugin is not static anymore.</p><p></p><p>Ace 1.6.4</p><p>====================================</p><p>- Fixed: Support of emmet in smarty mode. Again.</p><p></p><p>Ace 1.6.3</p><p>====================================</p><p>- Fixed: Support of emmet in smarty mode.</p><p></p><p>Ace 1.6.2</p><p>====================================</p><p>- Fixed: Editor mode handling.</p><p>- Added: \"Markdown\" syntax for mime type \"text/x-markdown\".</p><p></p><p>Ace 1.6.1</p><p>====================================</p><p>- Fixed : Work with enabled system setting \"compress_js\".</p><p></p><p>Ace 1.6.0</p><p>====================================</p><p>- Added: \"Smarty\" syntax for support of Fenom in chunks.</p><p>- Updated: Ace to version 1.2.0.</p><p></p><p>Ace 1.5.1</p><p>====================================</p><p>- Fixed: Bug with narrowing of the textarea.</p><p></p><p>Ace 1.5.0</p><p>====================================</p><p>- Changed: Assets are moved back to /assets/</p><p>- Fixed: MODx tag completions (was completely broken)</p><p>- Added: Editor height setting</p><p></p><p>Ace 1.4.3</p><p>====================================</p><p>- Added: MODx tag completions (Ctrl+Space)</p><p>- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug</p><p></p><p>Ace 1.4.2</p><p>====================================</p><p>- Added: Undo coalescing</p><p>- Changed: Mac fullscreen command is bound to Command+F12</p><p>- Added: Drag delay (allow to start new selection inside current one) for Mac</p><p>- Fixed: Use file extension of static chunks to detect code syntax</p><p></p><p></p><p>Ace 1.4.1</p><p>====================================</p><p>- Fixed: Tab handling</p><p>- Fixed: Emmet shortcut listing by Ctr+Alt+H</p><p>- Added: Expandable snippets support (see ace.snippets setting)</p><p>- Added: Emmet wrap_with_abbreviation command (Alt+W)</p><p></p><p>Ace 1.4.0</p><p>====================================</p><p>- Added: Emmet (aka Zen Coding) support</p><p>- Added: Terminal dark theme</p><p>- Added: Hotkey table (Ctrl+Alt+H)</p><p>- Fixed: Resource overview fatal error</p><p>- Changed: Assets are moved to /manager/assets/components/</p><p></p><p>Ace 1.3.3</p><p>====================================</p><p>- Added: PHP live syntax check</p><p>- Added: Chaos dark theme</p><p>- Added: Setting show_invisibles</p><p></p><p></p><p>Ace 1.3.2</p><p>====================================</p><p>- Fixed: The bug while installing the Ace</p><p>- Fixed: Broken word_wrap setting</p><p>- Added: Tab settings (tab size, soft tab)</p><p>- Added: Now completele compatible with AjaxManager extra</p><p></p><p></p><p>Ace 1.3.1</p><p>====================================</p><p>- Changed: Plugin content now is stored in static file</p><p></p><p></p><p>Ace 1.3.0</p><p>====================================</p><p>- Added: German translation</p><p>- Added: MODx tags highlighting</p><p>- Added: Ambiance and xcode themes</p><p>- Added: less/scss syntax highlighting</p><p>- Added: Fullwindow mode (Ctrl + F11)</p><p>- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.</p><p></p><p></p><p>Ace 1.2.1</p><p>====================================</p><p>- Changed: Assets are moved to manager folder</p><p>- Added: Font size setting</p><p>- Added: \"GitHub\" theme</p><p>- Added: Support of html5 drag\'n\'drop (accepting of dropped text)</p><p>- Added: XML / HTML tag autoclosing</p><p>- Fixed: broken en lexicon and php 5.3 incompatibility</p><p></p><p></p><p>Ace 1.2.0</p><p>====================================</p><p>- Removed: Some unnecessary options</p><p>- Changed: Editor options are moved to system settings</p><p>- Fixed: Multiple little editor bugs</p><p>- Added: Add missing \"OnFileEditFormPrerender\" event to MODx</p><p>- Added: Multiline editing</p><p>- Added: Advanced find/replace window</p><p></p><p></p><p>Ace 1.1.0</p><p>====================================</p><p>- Fixed: Fatal error on document create event</p><p>- Fixed: Changing of properties has no effect</p><p>- Added: File edition support</p><p>- Added: MODx tree elements drag\'n\'drop support</p><p>- Added: Auto-assigning which_element_editor to Ace</p><p></p><p></p><p>Ace 1.0.0</p><p>====================================</p><p>- Added: Plugin properties to adjust how Ace behaves</p><p>- Initial commit</p><p></p><p></p>\";s:9:\"createdon\";s:24:\"2019-02-28T11:11:59+0000\";s:9:\"createdby\";s:9:\"bezumkin2\";s:8:\"editedon\";s:24:\"2019-06-09T11:23:26+0000\";s:10:\"releasedon\";s:24:\"2019-02-28T11:11:59+0000\";s:9:\"downloads\";s:6:\"242164\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5c77c1ffbc8dd3cf0d8b4568\";s:9:\"signature\";s:12:\"ace-1.8.0-pl\";s:11:\"supports_db\";s:12:\"mysql,sqlsrv\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:68:\"http://modx.s3.amazonaws.com/extras/4f6e2782f245544fe8000014/ace.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5c77c1ffbc8dd3cf0d8b4568\";s:7:\"version\";s:24:\"5c77c1ffbc8dd3cf0d8b4567\";s:8:\"filename\";s:26:\"ace-1.8.0-pl.transport.zip\";s:9:\"downloads\";s:4:\"8717\";s:6:\"lastip\";s:13:\"82.146.38.179\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5c77c1ffbc8dd3cf0d8b4568\";}s:17:\"package-signature\";s:12:\"ace-1.8.0-pl\";s:10:\"categories\";s:15:\"richtexteditors\";s:4:\"tags\";s:0:\"\";}', 1, 8, 0, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('tagelementplugin-1.3.1-pl', '2019-06-09 14:24:50', '2019-06-09 11:25:12', '2019-06-09 14:25:12', 0, 1, 1, 0, 'tagelementplugin-1.3.1-pl.transport.zip', NULL, 'a:10:{s:9:\"changelog\";s:2216:\"1.3.1-pl\n==============\n- Bugfixes.\n\n1.3.0-pl\n==============\n- Added support of Fenom file element syntax.\n\n1.2.4-pl\n==============\n- Fixed bug with browser warning about unsaved data.\n\n1.2.3-pl\n==============\n- Fixed the name of the id attribute of the textarea field.\n\n1.2.2-pl\n==============\n- Fixed bug with the element name field when more then one quick dialog are opened.\n\n1.2.1-pl\n==============\n- Fixed bug with \"save as\" command.\n\n1.2.0-pl\n==============\n- tagElementPlugin is also available in the snippet and plugin forms.\n- Added keyboard shortcuts to work with chunks. By default, <Ctrl>+<Alt>+<C> and <Ctrl>+<Shift>+<Alt>+<C>.\n- Added \"Save as\" button to the quick update dialogs.\n\n1.1.4-pl\n==============\n- The \"Select element options\" dialog (shown by pressing <Ctrl>+<Insert>) takes into account specified parameters.\n\n1.1.3-pl\n==============\n- Bind <Ctrl+S> and <Ctrl+Shift+S> to the buttons \"Save\" and \"Save and close\" of the quick edit dialogs.\n\n1.1.2-pl\n==============\n- Allow to create the system settings.\n\n1.1.1-pl\n==============\n- Added system settings allow users to customize the keyboard shortcuts.\n\n1.1.0-pl\n==============\n- Added the ability to set parameters for snippets and chunks. Select a snippet tag and press Ctrl+Insert. It looks the same as when grag\'n\'droping elements.\n\n1.0.5-pl\n==============\n- Fixed bug of setting element name to field \"Name\" of the quick create element dialog.\n- Added check the changes to prevent loss of them when the user wants to leave the page. It\'s switched off by the system setting \"Confirm_navigation\".\n\n1.0.4-pl\n==============\n- Added recursive call.\n\n1.0.3-pl\n==============\n- Added ability to get the value of next tags: [[~5]], [[%lexicon_entry]], [[++system_setting]] and [[#10.pagetitle]]. The last one will be parsed if pdoParser is used (see http://docs.modx.pro/en/components/pdotools/parser#fastField-tag for more information).\n- Now you can select entire [[!mySnippet@propertySet? &param=`1`]]. tagElementPlugin can get correct tag name from this selection.\n\n1.0.2-pl\n==============\n- Fixed error with path in the plugin.\n\n1.0.1-pl\n==============\n- Added php and fenom syntax highlighting.\n\n1.0.0-pl\n==============\n- Initial release.\";s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:426:\"--------------------\ntagElementPlugin\n--------------------\nAuthor: Sergey Shlokov <sergant210@bk.ru>\n--------------------\n\nA MODx Revolution Plugin that allows edit chunks and snippets in a quick edit/create element window by selecting their tags in the textarea field of resource, chunk or template and pressing Ctrl-Enter.\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/sergant210/modExtra/issues\";s:6:\"chunks\";a:0:{}s:13:\"setup-options\";s:43:\"tagelementplugin-1.3.1-pl/setup-options.php\";s:9:\"signature\";s:25:\"tagelementplugin-1.3.1-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:53:\"/workspace/package/install/tagelementplugin-1.3.1-pl/\";s:14:\"package_action\";i:0;}', 'tagElementPlugin', 'a:38:{s:2:\"id\";s:24:\"5ca1999b3425f9240b524f52\";s:7:\"package\";s:24:\"56176ce9dc532f7adb00c984\";s:12:\"display_name\";s:25:\"tagelementplugin-1.3.1-pl\";s:4:\"name\";s:16:\"tagElementPlugin\";s:7:\"version\";s:5:\"1.3.1\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"3\";s:13:\"version_patch\";s:1:\"1\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:10:\"sergant210\";s:11:\"description\";s:2006:\"Open any resource, chunk or template where you use the chunk/snippet tags (for example  and ). Select it and press **Ctrl+Enter**. If the element exists the quick edit dialog will be opened. If not you can create it right here.  \n\nTo go to the element\'s page press **Ctrl+Shift+Enter**.\n\nPress **Ctrl+Alt+C** to open the quick update dialog for chunk with the selected name.\n\n### NEW FEATURES\nTo form a snippet or a chunk tag with parameters write the snippet name, select it and press **Ctrl+Insert**. The \"Select element options\" dialog with default properties will be opened. Change the required properties and press Save. You\'ll get the prepared tag like when you drag\'n\'drop elements.\n\n#### System settings to customize the shortcuts.\n- tagelementplugin_quick_editor_keys - a shortcut to open the quick editing window for selected elements.\n- tagelementplugin_element_editor_keys - a shortcut to redirect to the element page.\n- tagelementplugin_element_prop_keys -  a shortcut to open the \"Select element options\" dialog for the selected snippet or chunk.\n- tagelementplugin_quick_chunk_editor_keys -  a shortcut to open the quick update chunk dialog with selected name.\n- tagelementplugin_chunk_editor_keys -  a shortcut to redirect to the chunk update form.\n\nYou can specify a digital key code or use &#91;ExtJs constants&#93;(http://docs.sencha.com/extjs/3.4.0/#!/api/Ext.EventManager).\n\n### Support of Fenom file element syntax\nSupported syntax:\n- {include \'file:relative/path/to/file\'}\n- {\'@FILE relative/path/to/file\' | chunk}\n- {$_modx->runSnippet(\'@FILE relative/path/to/file\', &#91;&#93;)}\n\nSelect content in quotes (\"file:relative/path/to/file\" or \"@FILE relative/path/to/file\") and press **Ctrl+Enter** or **Ctrl+Shift+Enter**. Or select only path and press the combination of **Ctrl+Shift+F** and **Ctrl+Enter**. \n\n**Important!** TagElementPlugin does not support rich text editors.\n\nYou can read more detail information on &#91;Github&#93;(https://github.com/sergant210/tagElementPlugin).\";s:12:\"instructions\";s:28:\"Install via Package manager.\";s:9:\"changelog\";s:2073:\"1.3.1-pl\n==============\n- Bugfixes.\n\n1.3.0-pl\n==============\n- Added support of Fenom file element syntax.\n\n1.2.4-pl \n==============\n- Fixed bug with browser warning about unsaved data.\n\n1.2.3-pl\n==============\n- Fixed the name of the id attribute of the textarea field.\n\n1.2.2-pl\n==============\n- Fixed bug with the element name field when opened more then one quick dialog.\n\n1.2.1-pl\n==============\n- Fixed bug with \"save as\" command.\n\n1.2.0-pl\n==============\n- tagElementPlugin is also available in the snippet and plugin forms.\n- Added keyboard shortcuts to work with chunks. By default, Ctrl+Alt+C and Ctrl+Shift+Alt+C.\n- Added \"Save as\" button to the quick update dialogs.\n\n1.1.4-pl\n==============\n- The \"Select element options\" dialog (shown by pressing Ctrl+Insert) takes into account specified parameters.\n\n1.1.3-pl\n==============\n- Bind **Ctrl+S** and **Ctrl+Shift+S**  to the buttons \"Save\" and \"Save and close\" of the quick edit dialogs.\n\n1.1.2-pl\n==============\n- Allow to create the system settings.\n\n1.1.1-pl\n==============\n- Added system settings allow users to customize the keyboard shortcuts.\n\n1.1.0-pl\n==============\n- Added ability to form a snippet tag with parameters like the drag\'n\'drop operation. Select a snippet tag and press Ctrl+Insert.\n\n1.0.5-pl\n==============\n- Fixed bug of setting element name to field \"Name\" of the quick create element dialog.\n- Added check the changes to prevent loss of them when the user wants to leave the page. It\'s switched off by the system setting \"Confirm_navigation\".\n\n1.0.4-pl\n==============\n- Added recursive call.\n\n1.0.3-pl\n==============\n- Added ability to get the value of next tags: , ,  and . The last one will be parsed if pdoParser is used (see http://docs.modx.pro/en/components/pdotools/parser#fastField-tag for more information).\n- Now you can select entire . tagElementPlugin can get correct tag name from this selection.\n\n1.0.2-pl\n==============\n- Fixed error with path in the plugin.\n\n1.0.1-pl\n==============\n- Added php and fenom syntax highlighting.\n\n1.0.0-pl\n==============\n- Initial release.\";s:9:\"createdon\";s:24:\"2019-04-01T04:54:51+0000\";s:9:\"createdby\";s:10:\"sergant210\";s:8:\"editedon\";s:24:\"2019-06-08T10:17:33+0000\";s:10:\"releasedon\";s:24:\"2019-04-01T04:54:51+0000\";s:9:\"downloads\";s:5:\"10327\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:1:\"2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5ca1999b3425f9240b524f53\";s:9:\"signature\";s:25:\"tagelementplugin-1.3.1-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:1:\"2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:74:\"http://modx.s3.amazonaws.com/extras/56176ce9dc532f7adb00c984/edsel_en3.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5ca1999b3425f9240b524f53\";s:7:\"version\";s:24:\"5ca1999b3425f9240b524f52\";s:8:\"filename\";s:39:\"tagelementplugin-1.3.1-pl.transport.zip\";s:9:\"downloads\";s:3:\"156\";s:6:\"lastip\";s:13:\"185.124.9.105\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5ca1999b3425f9240b524f53\";}s:17:\"package-signature\";s:25:\"tagelementplugin-1.3.1-pl\";s:10:\"categories\";s:14:\"administration\";s:4:\"tags\";s:0:\"\";}', 1, 3, 1, 'pl', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint(4) NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2019-02-14 17:13:52', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `cachepwd` varchar(255) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modNative',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'admin', '$2y$10$6icGistnikbXamqc/K91iu0EH7pufcmILAL1oq6NyhAs7cGrRNkHK', '$2y$10$P4bx8wsGytA6N.L3PIH/.ObW0nMVI0nsb/4ySQu6M/ohj5yPvYcJ.', 'modUser', 1, NULL, NULL, 'hashing.modNative', '26aa89b66fbfff1d6ef0a67041171f32', 1, NULL, 1, 1560077088);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT '',
  `city` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(191) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(191) NOT NULL DEFAULT '',
  `extended` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Администратор по умолчанию', 'bogdangbhj@gmail.com', '', '', 0, 0, 0, 3, 1560968890, 1576834117, 0, 'e0vb3tmqkkq7gearm6ijphp4kmkohske', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(191) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_workspaces`
--

CREATE TABLE `modx_workspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `attributes` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2019-06-09 13:44:39', 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `controller` (`controller`);

--
-- Индексы таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Индексы таблицы `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Индексы таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Индексы таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `parent_class` (`parent_class`),
  ADD KEY `name_field` (`name_field`);

--
-- Индексы таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Индексы таблицы `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Индексы таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Индексы таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Индексы таблицы `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Индексы таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Индексы таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Индексы таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Индексы таблицы `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Индексы таблицы `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Индексы таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Индексы таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Индексы таблицы `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Индексы таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Индексы таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Индексы таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Индексы таблицы `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Индексы таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Индексы таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Индексы таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Индексы таблицы `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Индексы таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Индексы таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT для таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT для таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT для таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
