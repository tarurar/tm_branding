using System;
using System.ComponentModel;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;

namespace PPR.Taksomotor.NewsWebPart.TaksomotorNewsWebPart
{
    [ToolboxItemAttribute(false)]
    public partial class TaksomotorNewsWebPart : WebPart
    {

        [Personalizable(), WebBrowsable(true), Category("Источник данных")]
        [WebDisplayName("Название списка с новостями")]
        public String NewsList { get; set; }

        // Uncomment the following SecurityPermission attribute only when doing Performance Profiling on a farm solution
        // using the Instrumentation method, and then remove the SecurityPermission attribute when the code is ready
        // for production. Because the SecurityPermission attribute bypasses the security check for callers of
        // your constructor, it's not recommended for production purposes.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public TaksomotorNewsWebPart()
        {
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(NewsList))
            {
                SPList list = SPContext.Current.Web.Lists[NewsList];

                if (list != null)
                {
                    SPListItem item = GetLastMainNews(list);
                    if (item != null)
                    {
                        this.txtNewsTitle.Text = item.Title;
                        this.txtNewsDate.Text = String.Format("{0:dd.MM.yyyy}", (DateTime) item["Дата новости"]);
                        this.txtNewsBody.Text = item["Текст новости"].ToString();
                        return;
                    }
                }    
            }

            this.txtNewsBody.Text = "Веб-часть новостей на главной не настроена";
        }

        private SPListItem GetLastMainNews(SPList spList)
        {
            SPQuery query = new SPQuery
            {
                Query = String.Format(@"
                       <GetListItems><Query /><ViewFields><FieldRef Name='Title' />
                        <FieldRef Name='_x0414__x0430__x0442__x0430__x00' />
                        <FieldRef Name='_x0422__x0435__x043a__x0441__x04' />
                        </ViewFields><QueryOptions /></GetListItems>
                        <OrderBy>
                            <FieldRef Name='_x0414__x0430__x0442__x0430__x00' Ascending='False' />
                        </OrderBy>")
            };
            query.RowLimit = 1;
            SPListItemCollection itemCollection = spList.GetItems(query);
            if (itemCollection != null && itemCollection.Count >= 1)
            {
                return itemCollection[0];
                ;
            }
            return null;
        }
    }
}
