﻿{*<!--
/*+***********************************************************************************************************************************
 * The contents of this file are subject to the YetiForce Public License Version 1.1 (the "License"); you may not use this file except
 * in compliance with the License.
 * Software distributed under the License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or implied.
 * See the License for the specific language governing rights and limitations under the License.
 * The Original Code is YetiForce.
 * The Initial Developer of the Original Code is YetiForce. Portions created by YetiForce are Copyright (C) www.yetiforce.com. 
 * All Rights Reserved.
 *************************************************************************************************************************************/
-->*}
{assign var=ACCESSIBLE_USERS value=$CURRENTUSER->getAccessibleUsers()}
{assign var=ACCESSIBLE_GROUPS value=$CURRENTUSER->getAccessibleGroups()}
{assign var=CURRENTUSERID value=$CURRENTUSER->getId()}
<div class="dashboardWidgetHeader">
	<div class="row">
		<div class="col-md-8">
			<div class="dashboardTitle" title="{vtranslate($WIDGET->getTitle(), $MODULE_NAME)}"><strong>&nbsp;&nbsp;{vtranslate($WIDGET->getTitle(),$MODULE_NAME)}</strong></div>
		</div>
		<div class="col-md-4">
			<div class="box pull-right">
				{if Users_Privileges_Model::isPermitted('Calendar', 'EditView')}
					<a class="btn btn-default btn-xs" onclick="Vtiger_Header_Js.getInstance().quickCreateModule('Calendar'); return false;">
						<span class='glyphicon glyphicon-plus' border='0' title="{vtranslate('LBL_ADD_RECORD')}" alt="{vtranslate('LBL_ADD_RECORD')}"></span>
					</a>
				{/if}
				{include file="dashboards/DashboardHeaderIcons.tpl"|@vtemplate_path:$MODULE_NAME}
			</div>
		</div>
	</div>
	<hr class="widgetHr"/>
	<div class="row" >
		<div class="col-sm-7">
			<div class="headerCalendar fc-center pinUnpinShortCut row" >
				<div class="col-md-2">
					<button class="btn btn-default btn-sm" data-type="fc-prev-button"><span class="glyphicon glyphicon-chevron-left"></span></button>
				</div>
				<div class="col-md-8 month marginLeftZero textAlignCenter"> </div>
				<div class="col-md-2">
					<button class="btn btn-default btn-sm" data-type="fc-next-button"><span class="glyphicon glyphicon-chevron-right"></span></button>
				</div>
			</div>
		</div>
		<div class="col-sm-5">
			{include file="dashboards/SelectAccessibleTemplate.tpl"|@vtemplate_path:$MODULE_NAME}
		</div>
	</div>
</div>
<div class="dashboardWidgetContent dashboardWidgetCalendar">
	{include file="dashboards/CalendarContents.tpl"|@vtemplate_path:$MODULE_NAME WIDGET=$WIDGET}
</div>
<script type='text/javascript'>
	YetiForce_Calendar_Widget_Js('YetiForce_Home_Widget_Js',{},{});
</script>
