prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>6947512177686176
,p_default_application_id=>123
,p_default_id_offset=>0
,p_default_owner=>'DEMO'
);
end;
/
 
prompt APPLICATION 123 - ODTUG Kscope 24 - Live Makeover Using Template Directives
--
-- Application Export:
--   Application:     123
--   Name:            ODTUG Kscope 24 - Live Makeover Using Template Directives
--   Date and Time:   21:38 Friday July 5, 2024
--   Exported By:     MPEREIRA
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 15319474348202833
--   Manifest End
--   Version:         23.2.0
--   Instance ID:     706461763795510
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/kscope24_projects
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(15319474348202833)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'KSCOPE24_PROJECTS'
,p_display_name=>'KSCOPE24-Projects'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_css_file_urls=>'#APP_FILES#style#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div></div>',
'  {if TITLE%assigned/}<div></div>{endif/}',
'{else/}',
'    <div class="t-Card">',
'        <div class="t-Card-wrap mk-card-wrap">',
'            <div class="t-Card-header">',
'                {if IMAGE/}',
'                    <div>        ',
'                        {with/}',
'                            TYPE:=IMAGE',
'                            IMAGE:=#APP_FILES##IMAGE#',
'                            SIZE:=t-Avatar--md',
'                            SHAPE:=t-Avatar',
'                            CSS_CLASSES:=u-color-14',
'                        {apply THEME$AVATAR/}',
'                    </div>',
'                {endif/}',
'                <div>',
'                {if TITLE/}',
'                    <div class="t-Card-title mk-title">#TITLE#</div>',
'                {else/}',
'                    <div class="t-Card-title mk-df-title"></div>',
'                {endif/}',
'                {if SUBTITLE/}',
'                    <div class="t-Card-info mk-subtitle">#SUBTITLE#</div>',
'                {else/}',
'                    <div class="t-Card-info mk-df-subtitle"></div>',
'                {endif/}',
'                </div>',
'            </div>',
'',
'            <div class="t-Card-body">',
'                {if DESCRIPCION/}',
'                    <div class="t-Card-desc">#DESCRIPCION#</div>',
'                {else/}',
'                    <div class="t-Card-desc"></div>',
'                {endif/}',
'            ',
'                <div class="progress-bar-container">',
'                    <div class="u-flex u-justify-content-space-between margin-top-sm">',
'                        <span>Progress</span>',
'                        <span class="u-pullRight">#PROGRESS#%</span>',
'                    </div>',
'                    <div class="progress-bar">',
'                        <div class="progress-bar-inner u-color-1-bg" style="width: #PROGRESS#%;"></div>',
'                    </div>',
'                </div>',
'                    ',
'                <div class="mk-details">',
'                    <div class="mk-details-container">',
'                        <div class="time-badge">',
'                        {if TIME/}',
'                            {case STATUS/}',
'                                {when ONTIME/}',
'                                    <div class="mk-ontime">',
'                                    <span class="fa fa-clock-o" aria-hidden="true"></span>',
'                                    #TIME#    ',
'                                    </div>',
'                                {when DELAYED/}',
'                                    <div class="mk-delayed">',
'                                    <span class="fa fa-clock-o" aria-hidden="true"></span>',
'                                    #TIME#    ',
'                                    </div>',
'                                {otherwise/}',
'                                    <div class="mk-good">',
'                                    <span class="fa fa-clock-o" aria-hidden="true"></span>',
'                                    #TIME#    ',
'                                    </div>',
'                            {endcase/}',
'                        {endif/}',
'                        </div>',
'                        <div class="avatars u-pullRight">',
'                            {loop ":" USERS/}',
'                                    {with/}',
'                                        TYPE:=IMAGE',
'                                        IMAGE:=#APP_FILES#&APEX$ITEM.',
'                                        SIZE:=t-Avatar--xs',
'                                        SHAPE:=t-Avatar--circle',
'                                        CSS_CLASSES:=u-color-29',
'                                    {apply THEME$AVATAR/}',
'                            {endloop/}',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_report_body_template=>'<ul class="t-Cards t-Cards--4cols t-Cards--basic">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="t-Cards-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15351438935932578)
,p_plugin_id=>wwv_flow_imp.id(15319474348202833)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15355329234873837)
,p_plugin_id=>wwv_flow_imp.id(15319474348202833)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DESCRIPCION'
,p_prompt=>'Descripcion'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15355765294873838)
,p_plugin_id=>wwv_flow_imp.id(15319474348202833)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15356134910873838)
,p_plugin_id=>wwv_flow_imp.id(15319474348202833)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'PROGRESS'
,p_prompt=>'Progress'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15356554375873838)
,p_plugin_id=>wwv_flow_imp.id(15319474348202833)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'SUBTITLE'
,p_prompt=>'Subtitle'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15356975589873838)
,p_plugin_id=>wwv_flow_imp.id(15319474348202833)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'TIME'
,p_prompt=>'Time'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15357365532873839)
,p_plugin_id=>wwv_flow_imp.id(15319474348202833)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'USERS'
,p_prompt=>'Users'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15359166903881769)
,p_plugin_id=>wwv_flow_imp.id(15319474348202833)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'STATUS'
,p_prompt=>'Status'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(15359625831885848)
,p_plugin_id=>wwv_flow_imp.id(15319474348202833)
,p_name=>'OPTION_MENU'
,p_type=>'MENU'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button class="rw-Button rw-Button--borderless rw-Button--icon" {if IS_DISABLED/}disabled{endif/} type="button" data-menu="#MENU_ID#">',
'  <span class="rw-Button-label">',
'    <span class="rw-Button-icon oj-ux-ico-overflow-h" aria-hidden="true"></span>',
'    <span class="rw-Button-text">#LABEL#</span>',
'  </span>',
'</button> #MENU#'))
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
