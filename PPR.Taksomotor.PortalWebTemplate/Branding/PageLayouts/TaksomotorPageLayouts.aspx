<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">
	<style type="text/css">
		.v4master #s4-leftpanel { display: none; }
		.v4master .s4-ca { margin-left: 0px; }
	</style>
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	<PublishingWebControls:EditModePanel runat="server" id="editmodestyles">
		<!-- Styles for edit mode only-->
		<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	</PublishingWebControls:EditModePanel>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitleInTitleArea" runat="server">
	<SharePointWebControls:FieldValue FieldName="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
		<PublishingWebControls:EditModePanel runat="server" CssClass="edit-mode-panel title-edit">
			<SharePointWebControls:TextField runat="server" FieldName="Title"/>
		</PublishingWebControls:EditModePanel>  
        
      <div class="news">
		<div class="news-cont">
			   <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="TopZone" FrameType="None"
					Title="Вверху страницы: Главная новость" Orientation="Vertical" />
              
			<%--<div class="news-block">
				<span class="news-title">Изменение правил оформления</span>
				<span class="news-date">02.10.2014</span>
				<span class="news-text">
					Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit, amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore et dolore magnam aliquam quaerat voluptatem. ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur?
				</span>
			</div>--%> 
		</div>
	</div>
	
	<div class="data-summary">
		<div class="data-cont">
			<div class="data-title"><span>Сводные данные</span></div>
	           <table class="data-cont-tbl">
				<tr>
					<td>
					<%--<div class="data-block-cont">
						<h3>Количество обращений:</h3>
						<table>
							<tr>
								<td class="data-name">Выдано разрешений</td>
								<td class="data-number">3</td>
							</tr>
							<tr>
								<td class="data-name">Выдано дубликатов</td>
								<td class="data-number">3</td>
							</tr>
							<tr>
								<td class="data-name">Внесено изменений</td>
								<td class="data-number">12</td>
							</tr>
							<tr>
								<td class="data-name">Аннулировано разрешений</td>
								<td class="data-number">4</td>
							</tr>
							<tr>
								<td class="data-name">Приостановленных разрешений</td>
								<td class="data-number">4</td>
							</tr>
							<tr>
								<td class="data-name">Действующих разрешений</td>
								<td class="data-number">4</td>
							</tr>
						</table>
					</div>--%>   
                            <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" 
             ID="WebPartZone8" FrameType="None"
					    Title="Сводные данные слева" Orientation="Vertical" />
					</td>
					<td>
					<%--<div class="data-block-cont">
						<h3>Количество обращений:</h3>
						<table>
							<tr>
								<td class="data-name">На рассмотрении (новых)</td>
								<td class="data-number">3</td>
							</tr>
							<tr>
								<td class="data-name">В работе</td>
								<td class="data-number">3</td>
							</tr>
							<tr>
								<td class="data-name">В ожидании визита заявителя</td>
								<td class="data-number">12</td>
							</tr>
							<tr>
								<td class="data-name">Ожидающих решения пользователя</td>
								<td class="data-number">4</td>
							</tr>
						</table>
					</div>--%>   
                            <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" 
             ID="WebPartZone7" FrameType="None"
					    Title="Сводные данные посередине" Orientation="Vertical" />
					</td>
					<td>
					<%--<div class="data-block-cont">
						<h3>Статистика по ТС:</h3>
						<table>
							<tr>
								<td class="data-name">Всего</td>
								<td class="data-number">3</td>
							</tr>
							<tr>
								<td class="data-name">Находятся в лизинге</td>
								<td class="data-number">3</td>
							</tr>
							<tr>
								<td class="data-name">По договору аренды</td>
								<td class="data-number">12</td>
							</tr>
							<tr>
								<td class="data-name">C таксометром</td>
								<td class="data-number">4</td>
							</tr>
							<tr>
								<td class="data-name">С GPS</td>
								<td class="data-number">4</td>
							</tr>
						</table>
					</div>--%>  
                         <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" 
             ID="WebPartZone6" FrameType="None"
					    Title="Сводные данные справа" Orientation="Vertical" />
					</td>
				</tr>
			</table>
		</div>
		<div class="data-cont sec-data-cont">
			<table class="sec-data-cont-tbl">
				<tr>
					<td class="cont-td-1">
						<div class="data-div-cont">
						<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" 
             ID="WebPartZone3" FrameType="None"
					    Title="Отчет слева" Orientation="Vertical" />
						</div>
					</td>
					<td class="cont-td-2">
						<div class="data-div-cont">
						     <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" 
             ID="WebPartZone4" FrameType="None"
					    Title="Отчет посередине" Orientation="Vertical" />
						</div>
					</td>
					<td class="cont-td-3">
						<div class="data-div-cont">
						     <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" 
             ID="WebPartZone5" FrameType="None"
					    Title="Отчет справа" Orientation="Vertical" />
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	
		<div class="data-summary no-brd">
		       <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" 
             ID="WebPartZone2" FrameType="None"
					    Title="Внизу страницы: Топ перевозчиков" Orientation="Vertical" />
           
			<%--<div class="data-cont">
				<div class="data-title"><span>Топ перевозчиков</span></div>
				<table class="top-5">
					<tr>
						<td>
							<div class="top-5-div">9.5</div><span>ЗАО я доеду</span>
						</td>
						<td>
							<div class="top-5-div">9.1</div><span>Туда-сюда</span>
						</td>
						<td>
							<div class="top-5-div">8.8</div><span>Куда едем?</span>
						</td>
						<td>
							<div class="top-5-div">8.5</div><span>Москва-петушки</span>
						</td>
						<td>
							<div class="top-5-div">7.5</div><span>ОМГ где я</span>
						</td>
					</tr>
				</table>
			</div>--%>
		</div>       

</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server">
     <SharePointWebControls:ListSiteMapPath runat="server" SiteMapProviders="CurrentNavigationSwitchableProvider" RenderCurrentNodeAsLink="false" PathSeparator="" CssClass="s4-breadcrumb" NodeStyle-CssClass="s4-breadcrumbNode" CurrentNodeStyle-CssClass="s4-breadcrumbCurrentNode" RootNodeStyle-CssClass="s4-breadcrumbRootNode" NodeImageOffsetX=0 NodeImageOffsetY=289 NodeImageWidth=16 NodeImageHeight=16 NodeImageUrl="/_layouts/15/images/fgimg.png?rev=23" HideInteriorRootNodes="true" SkipLinkText="" /> 
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server" />
<asp:Content ContentPlaceholderID="PlaceHolderNavSpacer" runat="server" />
